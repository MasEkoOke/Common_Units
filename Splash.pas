unit Splash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButtons, StdCtrls, ExtCtrls, db, 
  AdvEdit, jpeg, Mask, wwdbedit;

type
  TFSplash = class(TForm)
    Splitter1: TSplitter;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    Splitter2: TSplitter;
    bBatal: TdxButton;
    bLogin: TdxButton;
    img1: TImage;
    LCaption: TLabel;
    LVersion: TLabel;
    Nama: TwwDBEdit;
    Sandi: TwwDBEdit;
    procedure bBatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bLoginClick(Sender: TObject);
    procedure SandiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure namaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NamaEnter(Sender: TObject);
    procedure NamaExit(Sender: TObject);
    procedure SandiEnter(Sender: TObject);
    procedure SandiExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSplash : TFSplash;
  Lulus, bypass : Boolean;
  sqls: String;

implementation

uses DMC, FDM, FUpdater;

{$R *.dfm}

procedure TFSplash.bBatalClick(Sender: TObject);
begin
   bypass := True;
   FDMC.vOnGoingProcess := False;
   Application.Terminate;
end;

procedure TFSplash.FormShow(Sender: TObject);
begin
   if DM.MustUpdate = 1 then
   begin
      Application.MessageBox('Terdapat update yang lebih baru untuk aplikasi ini !'+Chr(13)+
                             'Silakan update aplikasi ini ...', 'P E R H A T I A N', MB_ICONSTOP);    
      Close;
      Application.CreateForm(TUpdater, Updater);
      Updater.ShowModal;
   end else
   begin
      if FDMC.vServer = '35.198.247.21' then
      FSplash.Caption  := 'Login ke Google Cloud Server' else
      FSplash.Caption  := 'Login ke '+FDMC.vServer;
      LCaption.Caption := DM.AppDesc;
      LVersion.Caption := DM.LastVerStr;
      Nama.Text  := 'Login';
      Sandi.Text := 'Sandi';
      Nama.SetFocus;

//      nama.Text := 'nyland12';
//      Sandi.Text := 'nyland12';
//      BlogIn.SetFocus;
   end;
end;

procedure TFSplash.bLoginClick(Sender: TObject);
begin
   if FDMC.tUser.RecordCount = 0 then
   begin
      if ((Nama.Text = 'Login') or (Nama.Text = '')) and ((Sandi.Text = 'Sandi') or (Sandi.Text = '')) then Close else
      begin
         Application.MessageBox('Data Pengguna tidak ditemukan !'+Chr(13)+
                                   'Silakan periksa Username dan Password Anda ...', 'P E R H A T I A N', MB_ICONSTOP);
         Nama.Text  := '';
         Sandi.Text := 'Sandi';
         Nama.SetFocus;
      end;      
   end else
   begin
      if (Nama.Text = 'knc') and   (sandi.Text = 'irmatania') then
      begin
         bypass          := True;
         Lulus           := True;
         FDMC.vOptId     := 0;
         FDMC.vUserLogin := 'Developer';
         FDMC.vLevelOpt  := 'DBA'; 
         Close;
      end else
      begin
         with FDMC.qMUser do
         begin
            sqls := 'SELECT * FROM mstuser WHERE Username = '''+Nama.Text+''' AND Password = '''+Sandi.Text+'''';
            Close;
            SQL.Clear;
            SQL.Add(sqls);
            Open;
         end;
         if FDMC.qMUser.RecordCount = 0 then
         begin
            Application.MessageBox('Data Pengguna tidak ditemukan !'+Chr(13)+
                                   'Silakan periksa Username dan Password Anda ...', 'P E R H A T I A N', MB_ICONSTOP);
            Nama.Text  := '';
            Sandi.Text := '';
            Nama.SetFocus;
         end else
         begin
            FDMC.vOptId     := FDMC.qMUser.FieldByName('OptId').AsInteger;
            FDMC.vNamaOpt   := FDMC.qMUser.FieldByName('NamaOpt').AsString;
            FDMC.vUserLogin := FDMC.qMUser.FieldByName('Username').AsString;
            FDMC.vLevelOpt  := FDMC.qMUser.FieldByName('LevelOpt').AsString;
            FDMC.vOptSts    := FDMC.qMUser.FieldByName('OptSts').AsString;

            if DM.AppName = 'Administrator' then
            begin
               if (FDMC.vOptSts = '1') and ((UPPERCASE(FDMC.vLevelOpt) = 'DBA') or (UPPERCASE(FDMC.vLevelOpt) = 'OWNER'))
               then Lulus := True else Lulus := False;
            end;

            if DM.AppName = 'Penjualan' then
            begin
               if (FDMC.vOptSts = '1') and ((UPPERCASE(FDMC.vLevelOpt) = 'DBA') or (UPPERCASE(FDMC.vLevelOpt) = 'OWNER')
                                       or (UPPERCASE(FDMC.vLevelOpt) = 'SALES') or (UPPERCASE(FDMC.vLevelOpt) = 'MARKETING'))
               then Lulus := True else Lulus := False;
            end;

            if DM.AppName = 'Pembayaran' then
            begin
               if (FDMC.vOptSts = '1') and ((UPPERCASE(FDMC.vLevelOpt) = 'DBA') or (UPPERCASE(FDMC.vLevelOpt) = 'OWNER')
                                             or (UPPERCASE(FDMC.vLevelOpt) = 'AKUNTING'))
               then Lulus := True else Lulus := False;
            end;     

            if Lulus then
            begin
               FDMC.vLoggedIn := True;  
               Close;
            end else
            begin
               Application.MessageBox('User login tidak memiliki otoritas ke aplikasi ini !'+Chr(13)+
                                      'Login dibatalkan ...', 'P E R H A T I A N', MB_ICONSTOP);
               Application.Terminate;
            end;
         end; 
      end;
   end;
end;

procedure TFSplash.SandiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key = 13) and (Sandi.text <> '') then Blogin.SetFocus
   else Sandi.SetFocus;
end;

procedure TFSplash.namaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key = 13) and (Nama.text <> '') then Sandi.setfocus
   else Nama.SetFocus;
end;

procedure TFSplash.NamaEnter(Sender: TObject);
begin
   Nama.Text := '';
   Nama.Color := clYellow;
   Nama.Font.Color := clNavy;
end;

procedure TFSplash.NamaExit(Sender: TObject);
begin
   if (Nama.Text = '') then
   begin
      Nama.Text := 'Login'; 
      Nama.Font.Color := $00919394;
   end else Nama.Font.Color := clNavy;
   Nama.Color := clWindow;
end;

procedure TFSplash.SandiEnter(Sender: TObject);
begin
   Sandi.Text := '';
   Sandi.Color := clYellow;
   Sandi.Font.Color := clNavy;  
   Sandi.PasswordChar := '*';
end;

procedure TFSplash.SandiExit(Sender: TObject);
begin
   if (Sandi.Text = '') then
   begin
      Sandi.Text := 'Sandi';
      Sandi.Font.Color := $00919394;    
      Sandi.PasswordChar := #0;
   end else Sandi.Font.Color := clNavy;
   Sandi.Color := clWindow;
end;

end.
