object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Automatic Photo Renamer v2.0 (Delphi XE2 - Windows 7) - Feb 2012'
  ClientHeight = 671
  ClientWidth = 641
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 120
  TextHeight = 16
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 625
    Height = 129
  end
  object Label1: TLabel
    Left = 219
    Top = 143
    Width = 172
    Height = 16
    Caption = '"YYYY-MM-DD HH-MM-SS.jpg"'
  end
  object Label2: TLabel
    Left = 16
    Top = 143
    Width = 197
    Height = 16
    Caption = 'Exemple : "Photo.jpg" will become'
  end
  object RadioButton1: TRadioButton
    Left = 56
    Top = 32
    Width = 233
    Height = 17
    Caption = 'Rename with Date + Time of capture'
    TabOrder = 0
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 56
    Top = 55
    Width = 233
    Height = 17
    Caption = 'Rename with Date of capture'
    TabOrder = 1
    OnClick = RadioButton1Click
  end
  object RadioButton3: TRadioButton
    Left = 56
    Top = 78
    Width = 233
    Height = 17
    Caption = 'Prefix with Date + Time of capture'
    TabOrder = 2
    OnClick = RadioButton1Click
  end
  object RadioButton4: TRadioButton
    Left = 56
    Top = 101
    Width = 233
    Height = 17
    Caption = 'Prefix with Date of capture'
    TabOrder = 3
    OnClick = RadioButton1Click
  end
  object Button1: TButton
    Left = 320
    Top = 86
    Width = 273
    Height = 33
    Caption = 'Select and rename file(s)'
    TabOrder = 4
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 320
    Top = 32
    Width = 233
    Height = 17
    Caption = 'Rename .NEF if found'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object CheckBox2: TCheckBox
    Left = 320
    Top = 55
    Width = 153
    Height = 25
    Caption = 'Add Suffix :'
    TabOrder = 6
    OnClick = RadioButton1Click
  end
  object Edit1: TEdit
    Left = 408
    Top = 55
    Width = 185
    Height = 24
    TabOrder = 7
    OnChange = RadioButton1Click
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 646
    Width = 625
    Height = 17
    Step = 1
    TabOrder = 8
  end
  object Memo1: TMemo
    Left = 8
    Top = 165
    Width = 625
    Height = 484
    DoubleBuffered = True
    ParentDoubleBuffered = False
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 9
    WordWrap = False
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'jpg'
    FileName = '*.jpg'
    Filter = 'JPEG Images|*.jpg'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 464
    Top = 288
  end
end
