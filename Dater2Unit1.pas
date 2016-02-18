unit Dater2Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, CCR.Exif,
  Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Button1: TButton;
    CheckBox1: TCheckBox;
    Bevel1: TBevel;
    OpenDialog1: TOpenDialog;
    CheckBox2: TCheckBox;
    Edit1: TEdit;
    Label2: TLabel;
    ProgressBar1: TProgressBar;
    Memo1: TMemo;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ExifParser : TExifData;

  CurrentFileText, CurrentFilePath, CurrentFileName : string;
  NewFileText : string;

const
  ExampleText : string = 'Exemple : "Photo.jpg" will become ';

implementation

{$R *.dfm}


function StripFileName(s:string):string;
var dotpos, slashpos : integer;
begin
  dotpos := lastdelimiter('.',s);
  slashpos := lastdelimiter('\',s);
  Result := copy(s,slashpos+1,dotpos-slashpos-1);
end;

function StripFileEnd(s:string):string;
var slashpos : integer;
begin
  slashpos := lastdelimiter('\',s);
  Result := copy(s,slashpos+1,length(s)-slashpos);
end;

function StripFilePath(s:string):string;
begin
  Result := copy(s,1,lastdelimiter('\',s));
end;

function StripFilePrefix(s:string):string;
begin
  Result := Copy(s,1,LastDelimiter('.',s)-1);
end;

Function RenFile(Name, New : String):boolean;
var CurrentFile : File;
    Index : integer;
    neffile,newnef,currentnew : string;
begin
  if (New <> Name) then begin
    assignfile(CurrentFile,Name);
    CurrentNew := New;
    neffile := StripFilePrefix(Name)+'.NEF';
    Index :=1;
    While Fileexists(CurrentNew) do begin
      CurrentNew := StripFilePrefix(New) + ' ('+inttostr(index)+')' + '.jpg';
      inc(index);
    end;
    Rename(CurrentFile,CurrentNew);         //     #############################
    form1.Memo1.Lines.add(StripFileEnd(Name)+'->'+StripFileEnd(CurrentNew));
    if form1.CheckBox1.Checked and fileexists(neffile) then begin
      assignfile(CurrentFile,neffile);
      newnef := StripFilePrefix(CurrentNew)+'.NEF';
      Rename(CurrentFile,newnef);           //     #############################
      form1.Memo1.Lines.add('Note: '+StripFileEnd(neffile)+'->'+StripFileEnd(newnef));
    end;
    Result := true;
  end else begin
    Result := false;
    form1.Memo1.Lines.add('Note: '+StripFileEnd(Name)+' Already Renamed');
  end;
end;



procedure TForm1.Button1Click(Sender: TObject);
var l1,l2 : integer;
datetime : string;
f : file of byte;
begin

  if opendialog1.Execute then begin
    progressbar1.Max := opendialog1.Files.Count;
    for l1 := 1 to opendialog1.Files.Count do begin
      CurrentFileText := opendialog1.Files[l1-1];
      assignfile(f,CurrentFileText);
      reset(f);
      l2 := filesize(F);
      closefile(f);

      if l2 > 10 then begin
        CurrentFileName := StripfileName(CurrentFileText);
        CurrentFilePath := Stripfilepath(CurrentFileText);
        ExifParser := TExifData.Create;
        ExifParser.LoadFromJPEG(CurrentFileText);


        if not exifparser.empty then begin
          DateTime := datetimetostr((exifparser.DateTimeOriginal));
          for l2 := 0 to length(datetime)-1 do if datetime[l2] = ':' then datetime[l2] := '-';
          if datetime <> '1899-12-30' then begin
            if radiobutton2.Checked or radiobutton4.Checked then datetime := copy(datetime,0,10);
            NewfileText := CurrentFilePath + datetime;
            if radiobutton3.Checked or radiobutton4.Checked then  newfiletext := newfiletext +' '+ currentfilename;
            if checkbox2.Checked then newfiletext := newfiletext+ ' '+edit1.Text+'.jpg' else
              newfiletext := newfiletext + '.jpg';

            RenFile(currentfiletext, newfiletext);

          end else memo1.Lines.Add('Error: '+StripFileEnd(currentfiletext) + '->Invalid DateTime Found');
        end else memo1.Lines.Add('Error: '+StripFileEnd(currentfiletext) + '->No DateTime Found');
        ExifParser.Destroy;
      end else memo1.Lines.Add('Error: '+StripFileEnd(currentfiletext) + '->File Too Small'); // filesize > 10;
      progressbar1.position := l1;

    end;   //for l1

  end; //open execute
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  radiobutton1.Checked := true;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
var s:string;
begin
  if edit1.Text = '' then s := '<Suffix>' else s := edit1.Text;

  if not checkbox2.Checked then begin
    if radiobutton1.Checked then label2.Caption := ExampleText + '"YYYY-MM-DD HH-MM-SS.jpg"';
    if radiobutton2.Checked then label2.Caption := ExampleText + '"YYYY-MM-DD.jpg"';
    if radiobutton3.Checked then label2.Caption := ExampleText + '"YYYY-MM-DD HH-MM-SS Photo.jpg"';
    if radiobutton4.Checked then label2.Caption := ExampleText + '"YYYY-MM-DD Photo.jpg"';
  end else begin
    if radiobutton1.Checked then label2.Caption := ExampleText + '"YYYY-MM-DD HH-MM-SS '+S+'.jpg"';
    if radiobutton2.Checked then label2.Caption := ExampleText + '"YYYY-MM-DD '+S+'.jpg"';
    if radiobutton3.Checked then label2.Caption := ExampleText + '"YYYY-MM-DD HH-MM-SS Photo '+S+'.jpg"';
    if radiobutton4.Checked then label2.Caption := ExampleText + '"YYYY-MM-DD Photo '+S+'.jpg"';
  end;
end;

end.
