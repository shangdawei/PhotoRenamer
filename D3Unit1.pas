unit D3Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  Exif_Intf;

type
  TForm1 = class(TForm)
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  exif : TEXIF;

implementation

{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
begin
 EXIF:=TEXIF.Create;
end;

end.
