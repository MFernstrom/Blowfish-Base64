program DecodingExample;

{$mode objfpc}{$H+}

uses
  Classes, base64, BlowFish;

var
  Base64EncodedString: String = 'As2LrDdsIICiUkoQ4mbwAIrTglvssi+U';
  key: String = 'test';
  s1: TStringStream;
  de: TBlowFishDeCryptStream;
begin
  s1 := TStringStream.Create(DecodeStringBase64(Base64EncodedString));
  de := TBlowFishDecryptStream.Create(key,s1);
  WriteLn(de.ReadAnsiString);
  readln;
end.

