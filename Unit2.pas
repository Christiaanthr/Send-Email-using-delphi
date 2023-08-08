unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.ExtActns, Vcl.StdCtrls, Vcl.StdActns, Vcl.ExtCtrls, Vcl.ExtDlgs,
  Vcl.WinXCtrls, Vcl.AppAnalytics, System.Sensors, System.Sensors.Components,
  Vcl.WindowsStore, Vcl.OleCtrls, SHDocVw, Winapi.WebView2, Winapi.ActiveX,
  Vcl.Edge, Vcl.Grids, Vcl.Samples.Calendar, IdMessage, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, IdSMTP, IdText, IdSSLOpenSSL, IdAttachmentFile;

type
  TForm2 = class(TForm)
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    ActionList1: TActionList;
    InternetSendMail1: TSendMail;
    FileRun1: TFileRun;
    InternetBrowseURL1: TBrowseURL;
    Button2: TButton;
    FilePrintSetup1: TFilePrintSetup;
    Button3: TButton;
    ColorDialog1: TColorDialog;
    Button4: TButton;
    FontDialog1: TFontDialog;
    Panel1: TPanel;
    Button5: TButton;
    OpenTextFileDialog1: TOpenTextFileDialog;
    Button6: TButton;
    FileOpenWith1: TFileOpenWith;
    ToggleSwitch1: TToggleSwitch;
    Button7: TButton;
    WebBrowser1: TWebBrowser;
    Calendar1: TCalendar;
    btnEmail: TButton;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure btnEmailClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnEmailClick(Sender: TObject);
var
  SMTP: TIdSMTP;
  EmailMessage: TIdMessage;
  HtmlPart: TIdText;
  sRecip : string;
  Attachment: TIdAttachmentFile;
begin

sRecip := InputBox('','Eter Recipient address','') ;




{$REGION 'Email'}
  SMTP := TIdSMTP.Create(nil);
  EmailMessage := TIdMessage.Create(nil);


  try
    SMTP.Host := 'smtp-relay.brevo.com';
    SMTP.Port := 587; // SMTP server port
    SMTP.Username := 'christiaanthirionaugustus@gmail.com';
    SMTP.Password := 'vzRcSZ2gPEtVLINH';

    EmailMessage.From.Address := 'christiaanthirionaugustus@gmail.com'; // Sender email
    EmailMessage.Recipients.Add.Address := sRecip; // Recipient email
    EmailMessage.Subject := 'Subject of the email';
    EmailMessage.Body.Text := 'Body of the email';




    // Create the HTML part of the email
    HTMLPart := TIdText.Create(EmailMessage.MessageParts, nil);
    HTMLPart.ContentType := 'text/html';
    HTMLPart.Body.Add('<html>');
    HTMLPart.Body.Add('<body>');
    HTMLPart.Body.Add('<p>Hello,</p>');
    HTMLPart.Body.Add('<p>This is an inline PNG image:</p>');

    // Load and attach the PNG image
    Attachment := TIdAttachmentFile.Create(EmailMessage.MessageParts, 'D:\Delphi\Gr11 IT 2023\aa-Pat_test2\InvoiceFile\Builders_NUMBER_4265.png');
    Attachment.ContentType := 'image/png';
    Attachment.ContentDisposition := 'inline';
    Attachment.ContentID := '<image_cid>'; // Use a unique CID here

    HTMLPart.Body.Add('<img src="cid:image_cid">'); // Refer to the image using its CID
    HTMLPart.Body.Add('</body>');
    HTMLPart.Body.Add('</html>');


    SMTP.Connect;
    try
      SMTP.Send(EmailMessage);
    finally
      SMTP.Disconnect;
    end;
  finally
    SMTP.Free;
    EmailMessage.Free;

  end;
{$ENDREGION}

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
InternetBrowseURL1.Execute
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
FilePrintSetup1.Execute
end;

procedure TForm2.Button4Click(Sender: TObject);
begin

ColorDialog1.Execute ;
Panel1.Color := ColorDialog1.Color      ;
Repaint;

end;

procedure TForm2.Button5Click(Sender: TObject);
begin
FontDialog1.Execute ;


//Panel1.Font.Style := FontDialog1.Font.Style;
//Panel1.Font.Color := FontDialog1.Font.Color;
Panel1.Font := FontDialog1.Font;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
FileOpenWith1.Execute
end;



procedure TForm2.Button7Click(Sender: TObject);
begin


ToggleSwitch1.StateCaptions.CaptionOn := 'Dark';
ToggleSwitch1.StateCaptions.CaptionOff := 'Light';

WebBrowser1.Navigate('https://docwiki.embarcadero.com/RADStudio/Sydney/en/Using_TEdgeBrowser_Component_and_Changes_to_the_TWebBrowser_Component')

end;

end.
