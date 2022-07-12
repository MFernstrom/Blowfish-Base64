unit main;

{
  author  Marcus Fernstrom
  license Apache2.0
  version 1.0
  github  https://github.com/MFernstrom/Blowfish-Base64
}

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls, BlowFish, base64, LCLIntf;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Key: TLabeledEdit;
    Input: TMemo;
    Output: TMemo;
    Shape1: TShape;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    procedure Button1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure InputClick(Sender: TObject);
    procedure KeyClick(Sender: TObject);
    procedure OutputClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  s1: TStringStream;
  en: TBlowFishEncryptStream;
begin
  s1 := TStringStream.Create('');
  en := TBlowFishEncryptStream.Create(Key.Text,s1);
  en.WriteAnsiString(trim(Input.Text));
  en.Free;
  Output.Text := EncodeStringBase64(s1.DataString);
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
  OpenURL('https://github.com/MFernstrom/Blowfish-Base64');
end;

procedure TForm1.InputClick(Sender: TObject);
begin
  Input.SelectAll;
end;

procedure TForm1.KeyClick(Sender: TObject);
begin
  Key.SelectAll;
end;

procedure TForm1.OutputClick(Sender: TObject);
begin
  Output.SelectAll;
end;

end.

