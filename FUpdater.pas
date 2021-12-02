unit FUpdater;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, StdCtrls, AdvCircularProgress, ShellAPI, ExtCtrls, ComCtrls,
  IdRawBase, IdRawClient, IdIcmpClient;

type
  TUpdater = class(TForm)
    lblLInfo: TLabel;
    tStart: TTimer;
    pBar: TProgressBar;
    img1: TImage;
    LDurasi: TLabel;
    HTTP: TIdHTTP;
    procedure FormShow(Sender: TObject);
    procedure tStartTimer(Sender: TObject);
    procedure CopyFileX(sumber, tujuan: string);
    procedure HTTPWork(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure HTTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Updater: TUpdater;
  TargetFile, OldTargetFile, sourceurl, SourceOffline: String;
  ReturnValue: Integer;
  Stream: TMemoryStream;

implementation

uses
   DMC, FDM;


{$R *.dfm}
 
procedure TUpdater.FormShow(Sender: TObject);
begin
   Updater.Height   := 131;
   lblLInfo.Visible := True;
   lblLInfo.Caption := 'Proses updating sedang berlangsung, '+#13+
                       'silakan tunggu beberapa saat ...';
   pbar.Position    := 0;
   tStart.Enabled   := True;
end;

procedure TUpdater.tStartTimer(Sender: TObject);
begin
   tStart.Enabled := False;
   TargetFile     := Application.EXEName;
   OldTargetFile  := ExtractFilePath(Application.EXEName)+DM.AppName+'Old.exe';

   RenameFile(TargetFile, OldTargetFile);

   sourceurl :='http://35.198.247.21:80/home/ftpuser/Jingga/Desktop App/'+DM.AppName+'/'+DM.AppName+'.exe';
   try
      Stream := TMemoryStream.Create;
      try
         RenameFile(TargetFile, OldTargetFile);
         Http.Get(sourceurl, Stream);
         Stream.SaveToFile(TargetFile);
      finally
         Stream.Free;
         ShellExecute(Handle, 'open', PChar(TargetFile), nil, nil, SW_SHOWNORMAL) ;
         Application.Terminate;
      end;
   finally    
   end;
end;
 
procedure TUpdater.CopyFileX(sumber, tujuan: string);
var  
  dariFile, keFile: file of byte;  
  Buffer: array[0..4096] of char;  
  NumRead: integer;  
  ukuranFile: longint;  
  t1, t2: DWORD;  
  maksimal: integer;
begin
   with Updater do
   begin
      AssignFile(dariFile, sumber);
      Reset(dariFile);
      AssignFile(keFile, tujuan);
      rewrite(keFile);
      ukuranFile := FileSize(dariFile);
      with pBar do
      begin
         Min  := 0;
         Max  := ukuranFile;  
         t1   := GetTickCount;  
         maksimal := Max div 4096;
         while ukuranFile > 0 do
         begin
            BlockRead(dariFile, Buffer[0], SizeOf(Buffer), NumRead);
            ukuranFile := ukuranFile - NumRead;
            BlockWrite(keFile, Buffer[0], NumRead);
            t2  := GetTickCount;
            Min := Min + 1;
            // menampilkan waktu di label1
            LDurasi.Visible := True;
            LDurasi.Caption := FormatFloat('0', ((t2 - t1) / min * maksimal - t2 + t1) / 100)+' detik';
            Application.ProcessMessages;
            Position := Position + NumRead;
         end;
         CloseFile(dariFile);
         CloseFile(keFile);
      end;
   end;
end;
             
procedure TUpdater.HTTPWork(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
   pbar.Position := AWorkCount;
   pbar.Repaint;
end;

procedure TUpdater.HTTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
   pbar.Max := AWorkCountMax;
   pbar.Repaint;
end;

end.
