object frmJpegDump: TfrmJpegDump
  Left = 245
  Top = 81
  BorderWidth = 4
  Caption = 'Jpeg Header Dump'
  ClientHeight = 507
  ClientWidth = 744
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ScreenSnap = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object panBtns: TPanel
    Left = 0
    Top = 471
    Width = 744
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      744
      36)
    object btnOpen: TBitBtn
      Left = 491
      Top = 6
      Width = 87
      Height = 27
      Action = actOpen
      Anchors = [akTop, akRight]
      Caption = '&Open File'
      Default = True
      TabOrder = 1
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
        078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
        BE078DBEFF00FFFF00FF078DBE25A1D172C7E785D7FA66CDF965CDF965CDF965
        CDF965CDF865CDF965CDF866CEF939ADD8078DBEFF00FFFF00FF078DBE4CBCE7
        39A8D1A0E2FB6FD4FA6FD4F96ED4FA6FD4F96FD4FA6FD4FA6FD4FA6ED4F93EB1
        D984D7EB078DBEFF00FF078DBE72D6FA078DBEAEEAFC79DCFB79DCFB79DCFB79
        DCFB79DCFB7ADCFB79DCFA79DCFA44B5D9AEF1F9078DBEFF00FF078DBE79DDFB
        1899C79ADFF392E7FB84E4FB83E4FC83E4FC84E4FC83E4FC83E4FB84E5FC48B9
        DAB3F4F9078DBEFF00FF078DBE82E3FC43B7DC65C3E0ACF0FD8DEBFC8DEBFC8D
        EBFD8DEBFD8DEBFC8DEBFD0C85184CBBDAB6F7F96DCAE0078DBE078DBE8AEAFC
        77DCF3229CC6FDFFFFC8F7FEC9F7FEC9F7FEC9F7FEC8F7FE0C85183CBC5D0C85
        18DEF9FBD6F6F9078DBE078DBE93F0FE93F0FD1697C5078DBE078DBE078DBE07
        8DBE078DBE0C851852D97F62ED9741C4650C8518078DBE078DBE078DBE9BF5FE
        9AF6FE9AF6FE9BF5FD9BF6FE9AF6FE9BF5FE0C851846CE6C59E48858E18861EB
        9440C1650C8518FF00FF078DBEFEFEFEA0FBFFA0FBFEA0FBFEA1FAFEA1FBFE0C
        85180C85180C85180C851856E18447CD6E0C85180C85180C8518FF00FF078DBE
        FEFEFEA5FEFFA5FEFFA5FEFF078CB643B7DC43B7DC43B7DC0C85184EDD7936BA
        540C8518FF00FFFF00FFFF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
        00FFFF00FFFF00FF0C851840D0650C8518FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0C85182AB7432DBA490C85
        18FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF0C851821B5380C8518FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF0C85180C85180C85180C8518FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0C85180C85180C
        85180C8518FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object btnExit: TBitBtn
      Left = 665
      Top = 6
      Width = 75
      Height = 27
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Close'
      TabOrder = 3
      OnClick = btnExitClick
    end
    object btnReload: TBitBtn
      Left = 584
      Top = 6
      Width = 75
      Height = 27
      Action = actReload
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Reload'
      TabOrder = 2
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        C2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2A6
        A4C2A6A4FF00FFFF00FFFF00FFFF00FFC2A6A4FEFCFBFEFCFBFEFCFBFEFCFBFE
        FCFBFEFCFBFEFCFBFEFCFBFEFCFBFEFCFBC2A6A4FF00FFFF00FFFF00FFFF00FF
        C2A6A4FEFCFBFEFCFBFEFCFBFEFCFBD8EBD6018A02018A02D8EBD6FEFCFBFEFC
        FBC2A6A4FF00FFFF00FFFF00FFFF00FFC2A6A4FEFBF7FEFBF7018A02D8EAD201
        8A02D8EAD2D8EAD2018A02FEFBF7FEFBF7C2A6A4FF00FFFF00FFFF00FFFF00FF
        C2A6A4FEF9F4FEF9F4018A02018A02D8E8D0FEF9F4FEF9F4D8E8D0FEF9F4FEF9
        F4C2A6A4FF00FFFF00FFFF00FFFF00FFC2A6A4FEF7F0FEF7F0018A02018A0201
        8A02FEF7F0FEF7F0FEF7F0FEF7F0FEF7F0C2A6A4FF00FFFF00FFFF00FFFF00FF
        C2A6A4FEF5ECFEF5ECFEF5ECFEF5ECFEF5EC018A02018A02018A02FEF5ECFEF5
        ECC2A6A4FF00FFFF00FFFF00FFFF00FFC2A6A4FEF3E9FEF3E9D8E3C7FEF3E9FE
        F3E9D8E3C7018A02018A02FEF3E9FEF3E9C2A6A4FF00FFFF00FFFF00FFFF00FF
        C2A6A4FFF1E5FFF1E5018A02D9E2C3D9E2C3018A02D9E2C3018A02FFF1E5FFF1
        E5C2A6A4FF00FFFF00FFFF00FFFF00FFC2A6A4FFF0E2FFF0E2D9E1C1018A0201
        8A02D9E1C1DDCFC2DDCFC2DDCFC2DDCFC2C2A6A4FF00FFFF00FFFF00FFFF00FF
        C2A6A4FFEEDEFFEEDEFFEEDEFFEEDEFFEEDEFFEEDEC5B5A9C3B4A8C2B3A7C1B2
        A6C2A6A4FF00FFFF00FFFF00FFFF00FFC2A6A4FFECDAFFECDAFFECDAFFECDAFF
        ECDAFFECDAB0A296B0A296B0A296B0A296C2A6A4FF00FFFF00FFFF00FFFF00FF
        C2A6A4FFEAD7FFEAD7FFEAD7FFEAD7FFEAD7C9B9ACFBF8F4FBF8F4E6DAD9C2A6
        A4FF00FFFF00FFFF00FFFF00FFFF00FFC2A6A4FFE8D3FFE8D3FFE8D3FFE8D3FF
        E8D3C9B9ACFBF8F4DFCEC7C2A6A4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        C2A6A4FFE6D0FFE6D0FFE6D0FFE6D0FFE6D0C9B9ACDFCEC7C2A6A4FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFC2A6A4C2A6A4C2A6A4C2A6A4C2A6A4C2
        A6A4C2A6A4C2A6A4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object chkStayOnTop: TCheckBox
      Left = 4
      Top = 12
      Width = 97
      Height = 17
      Caption = '&Stay on top'
      TabOrder = 0
      OnClick = chkStayOnTopClick
    end
  end
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 744
    Height = 471
    ActivePage = tabOriginal
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 693
    ExplicitHeight = 391
    object tabOriginal: TTabSheet
      Caption = 'Original'
    end
    object tabResaved: TTabSheet
      Caption = 'Resaved'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object dlgOpen: TOpenPictureDialog
    DefaultExt = 'jpg'
    Filter = 'JPEG Image File (*.jpg,*.jpeg)|*.jpg;*.jpeg'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 364
    Top = 32
  end
  object ActionList: TActionList
    Left = 400
    Top = 32
    object EditSelectAll1: TEditSelectAll
      Category = 'Edit'
      Caption = 'Select &All'
      Hint = 'Select All|Selects the entire document'
      ShortCut = 16449
    end
    object actOpen: TAction
      Caption = '&Open File'
      ShortCut = 16463
      OnExecute = actOpenExecute
    end
    object actReload: TAction
      Caption = '&Reload'
      Checked = True
      Enabled = False
      ShortCut = 116
      OnExecute = actReloadExecute
    end
  end
  object dlgSave: TSavePictureDialog
    DefaultExt = 'jpg'
    Filter = 'JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Save roundtripped image'
    Left = 364
    Top = 68
  end
end
