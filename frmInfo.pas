unit frmInfo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, ShellAPI;

type
  TInfoForm = class(TForm)
    Panel1: TPanel;
    Label13: TLabel;
    Label11: TLabel;
    Image3: TImage;
    Image1: TImage;
    procedure GoToURL(Sender: TObject);
    procedure CloseWindow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InfoForm: TInfoForm;

implementation

{$R *.DFM}

procedure TInfoForm.GoToURL(Sender: TObject);
begin
        ShellExecute(Handle,'open','http://www.gaman.pl/','','',SW_SHOW);
end;

procedure TInfoForm.CloseWindow(Sender: TObject);
begin
        Close;
end;

procedure TInfoForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if Key=27 then Close;
end;

end.
