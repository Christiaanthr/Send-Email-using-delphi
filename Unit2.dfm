object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 590
  ClientWidth = 1108
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Scaled = False
  TextHeight = 15
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 94
    Height = 73
    Caption = 'Run Program'
    TabOrder = 0
  end
  object Button2: TButton
    Left = 8
    Top = 88
    Width = 94
    Height = 73
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Url'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 169
    Width = 94
    Height = 73
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Print'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 250
    Width = 94
    Height = 31
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Color dialog'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Panel1: TPanel
    Left = 344
    Top = 9
    Width = 760
    Height = 109
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'This is a test with dialogs'
    ParentBackground = False
    TabOrder = 4
  end
  object Button5: TButton
    Left = 9
    Top = 289
    Width = 94
    Height = 40
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'panel'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 9
    Top = 337
    Width = 94
    Height = 55
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Open With...'
    TabOrder = 6
    OnClick = Button6Click
  end
  object ToggleSwitch1: TToggleSwitch
    Left = 136
    Top = 9
    Width = 86
    Height = 25
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    DoubleBuffered = True
    ParentDoubleBuffered = False
    State = tssOn
    SwitchHeight = 25
    SwitchWidth = 63
    TabOrder = 7
    ThumbWidth = 19
  end
  object Button7: TButton
    Left = 9
    Top = 400
    Width = 94
    Height = 31
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Button7'
    TabOrder = 8
    OnClick = Button7Click
  end
  object WebBrowser1: TWebBrowser
    Left = 321
    Top = 126
    Width = 760
    Height = 132
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 9
    SelectedEngine = EdgeIfAvailable
    ControlData = {
      4C000000D73E0000EA0A00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E12620C000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Calendar1: TCalendar
    Left = 136
    Top = 108
    Width = 177
    Height = 150
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    StartOfWeek = 0
    TabOrder = 10
  end
  object btnEmail: TButton
    Left = 9
    Top = 532
    Width = 94
    Height = 31
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Email'
    TabOrder = 14
    OnClick = btnEmailClick
  end
  object OpenDialog1: TOpenDialog
    FileName = 'C:\Users\chris\OneDrive\Documents\namesfile.txt'
    Left = 320
    Top = 528
  end
  object ActionList1: TActionList
    Left = 408
    Top = 528
    object InternetSendMail1: TSendMail
      Category = 'Internet'
      Caption = '&Send Mail...'
      Hint = 'Send email'
      Subject = 'test'
      Text.Strings = (
        'hi')
    end
    object FileRun1: TFileRun
      Category = 'File'
      Browse = False
      BrowseDlg.Title = 'Run'
      Caption = '&Run...'
      Directory = 'D:\Delphi\Gr11 IT 2023\aa-Pat_test2\test_pat2.exe'
      FileName = 'D:\Delphi\Gr11 IT 2023\aa-Pat_test2\test_pat2.exe'
      Hint = 'Run|Runs an application'
      Operation = 'open'
      ShowCmd = scShowNormal
    end
    object InternetBrowseURL1: TBrowseURL
      Category = 'Internet'
      Caption = '&Browse URL'
      Hint = 'Browse URL'
      URL = 
        'https://docwiki.embarcadero.com/CodeExamples/Sydney/en/TSendMail' +
        '_(Delphi)'
    end
    object FilePrintSetup1: TFilePrintSetup
      Category = 'File'
      Caption = 'Print Set&up...'
      Hint = 'Print Setup'
    end
    object FileOpenWith1: TFileOpenWith
      Category = 'File'
      Caption = 'Open with...'
      FileName = ''
    end
  end
  object ColorDialog1: TColorDialog
    Left = 496
    Top = 520
  end
  object FontDialog1: TFontDialog
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI Historic'
    Font.Style = []
    Left = 592
    Top = 528
  end
  object OpenTextFileDialog1: TOpenTextFileDialog
    Left = 200
    Top = 528
  end
  object IdSMTP1: TIdSMTP
    SASLMechanisms = <>
    Left = 680
    Top = 360
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 800
    Top = 352
  end
end
