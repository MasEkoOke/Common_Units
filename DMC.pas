unit DMC;

interface

uses
  SysUtils, Classes, DB, DBAccess, MyAccess, MemDS, Inifiles,
  Forms, ExtCtrls, StdCtrls, Dialogs;

type
  TFDMC = class(TDataModule)
    ConGlobal: TMyConnection;
    dsqMUser: TMyDataSource;
    qMUser: TMyQuery;
    dsqMSalesman: TMyDataSource;
    qMSalesman: TMyQuery;
    dsqMProyek: TMyDataSource;
    qMProyek: TMyQuery;
    dsqMTipe: TMyDataSource;
    qMTipe: TMyQuery;
    dsqMKavling: TMyDataSource;
    qMKavling: TMyQuery;
    dsqMBonus: TMyDataSource;
    qMBonus: TMyQuery;
    dsqMHarga: TMyDataSource;
    qMHarga: TMyQuery;
    dstUser: TMyDataSource;
    tUser: TMyTable;
    dstSalesman: TMyDataSource;
    tSalesman: TMyTable;
    tSalesmanIdMarketing: TIntegerField;
    tSalesmanNamaMarketing: TStringField;
    tSalesmanBesaranFee: TFloatField;
    tSalesmanInputTime: TDateTimeField;
    dstProyek: TMyDataSource;
    tProyek: TMyTable;
    tProyekIdProyek: TIntegerField;
    tProyekNamaProyek: TStringField;
    tProyekAlamatProyek: TStringField;
    tProyekNoKontak: TStringField;
    tProyekNIBInduk: TStringField;
    tProyekSHMInduk: TStringField;
    tProyekLuas: TFloatField;
    tProyekInputTime: TDateTimeField;
    tProyekOptId: TSmallintField;
    qTemp: TMyQuery;
    dsqPosisi: TMyDataSource;
    qPosisi: TMyQuery;
    qPosisiPosisi: TStringField;
    tUserOptId: TSmallintField;
    tUserNamaOpt: TStringField;
    tUserUsername: TStringField;
    tUserPassword: TStringField;
    tUserLevelOpt: TStringField;
    tUserOptSts: TStringField;
    tUserInitialInput: TDateTimeField;
    qMUserOptId: TSmallintField;
    qMUserNamaOpt: TStringField;
    qMUserUsername: TStringField;
    qMUserPassword: TStringField;
    qMUserLevelOpt: TStringField;
    qMUserOptSts: TStringField;
    qMUserInitialInput: TDateTimeField;
    dstTipe: TMyDataSource;
    tTipe: TMyTable;
    tTipeIdType: TIntegerField;
    tTipeIdProyek: TIntegerField;
    tTipeNamaType: TStringField;
    tTipeInputTime: TDateTimeField;
    tTipeOptId: TSmallintField;
    tTipeNamaProyek: TStringField;
    dstKavling: TMyDataSource;
    tKavling: TMyTable;
    dstKonsumen: TMyDataSource;
    tKonsumen: TMyTable;
    dsqMKonsumen: TMyDataSource;
    qMKonsumen: TMyQuery;
    dstHarga: TMyDataSource;
    tHarga: TMyTable;
    dstBonus: TMyDataSource;
    tBonus: TMyTable;
    dsqLProType: TMyDataSource;
    qLProType: TMyQuery;
    tTipeProTip: TStringField;
    tKavlingIdKavling: TIntegerField;
    tKavlingKodeKavling: TStringField;
    tKavlingIdType: TIntegerField;
    tKavlingPosisiRumah: TStringField;
    tKavlingNIBSplit: TStringField;
    tKavlingSHMSplit: TStringField;
    tKavlingLuasBangunan: TFloatField;
    tKavlingLuasTanahStandar: TFloatField;
    tKavlingLuasTanahBPN: TFloatField;
    tKavlingLebihKurangLuas: TFloatField;
    tKavlingKeteranganProgres: TStringField;
    tKavlingPersentaseProgres: TFloatField;
    tKavlingInputTime: TDateTimeField;
    tKavlingOptId: TSmallintField;
    tKavlingProTip: TStringField;
    tHargaIdHarga: TIntegerField;
    tHargaIdType: TIntegerField;
    tHargaHargaMembangun: TFloatField;
    tHargaHargaSatuanTanah: TFloatField;
    tHargaHargaSatuanBangunan: TFloatField;
    tHargaHargaSatuanLebihKurang: TFloatField;
    tHargaTambahanDiskon: TFloatField;
    tHargaHargaJualStd: TFloatField;
    tHargaDiscountTunai: TFloatField;
    tHargaInputTime: TDateTimeField;
    tHargaOptId: TSmallintField;
    qMProyekIdProyek: TIntegerField;
    qMProyekNamaProyek: TStringField;
    qMProyekAlamatProyek: TStringField;
    qMProyekNoKontak: TStringField;
    qMProyekNIBInduk: TStringField;
    qMProyekSHMInduk: TStringField;
    qMProyekLuas: TFloatField;
    qMProyekInputTime: TDateTimeField;
    qMProyekOptId: TSmallintField;
    qMTipeIdType: TIntegerField;
    qMTipeIdProyek: TIntegerField;
    qMTipeNamaType: TStringField;
    qMTipeInputTime: TDateTimeField;
    qMTipeOptId: TSmallintField;
    qMKavlingIdKavling: TIntegerField;
    qMKavlingIdType: TIntegerField;
    qMKavlingKodeKavling: TStringField;
    qMKavlingPosisiRumah: TStringField;
    qMKavlingNIBSplit: TStringField;
    qMKavlingSHMSplit: TStringField;
    qMKavlingLuasBangunan: TFloatField;
    qMKavlingLuasTanahStandar: TFloatField;
    qMKavlingLuasTanahBPN: TFloatField;
    qMKavlingLebihKurangLuas: TFloatField;
    qMKavlingKeteranganProgres: TStringField;
    qMKavlingPersentaseProgres: TFloatField;
    qMKavlingInputTime: TDateTimeField;
    qMKavlingOptId: TSmallintField;
    qMHargaIdHarga: TIntegerField;
    qMHargaIdType: TIntegerField;
    qMHargaHargaMembangun: TFloatField;
    qMHargaHargaSatuanTanah: TFloatField;
    qMHargaHargaSatuanBangunan: TFloatField;
    qMHargaHargaSatuanLebihKurang: TFloatField;
    qMHargaTambahanDiskon: TFloatField;
    qMHargaHargaJualStd: TFloatField;
    qMHargaDiscountTunai: TFloatField;
    qMHargaInputTime: TDateTimeField;
    qMHargaOptId: TSmallintField;
    qMBonusIdBonus: TIntegerField;
    qMBonusNamaBonus: TStringField;
    qMBonusBesarBonus: TFloatField;
    qMBonusInputTime: TDateTimeField;
    qMBonusOptId: TSmallintField;
    qMSalesmanIdMarketing: TIntegerField;
    qMSalesmanNamaMarketing: TStringField;
    qMSalesmanBesaranFee: TFloatField;
    qMSalesmanMktSts: TStringField;
    qMSalesmanInputTime: TDateTimeField;
    qMSalesmanOptId: TSmallintField;
    qMKonsumenIdKonsumen: TIntegerField;
    qMKonsumenNamaKonsumen: TStringField;
    qMKonsumenAlamat: TStringField;
    qMKonsumenNoKontak: TStringField;
    qMKonsumenNIK: TStringField;
    qMKonsumenInputTime: TDateTimeField;
    qMKonsumenOptId: TSmallintField;
    tBonusIdBonus: TIntegerField;
    tBonusNamaBonus: TStringField;
    tBonusBesarBonus: TFloatField;
    tBonusInputTime: TDateTimeField;
    tBonusOptId: TSmallintField;
    tTipeKeterangan: TStringField;
    qMTipeKeterangan: TStringField;
    qMHargaKeterangan: TStringField;
    tHargaKeterangan: TStringField;
    tKonsumenIdKonsumen: TIntegerField;
    tKonsumenNamaKonsumen: TStringField;
    tKonsumenAlamat: TStringField;
    tKonsumenNoKontak: TStringField;
    tKonsumenNIK: TStringField;
    tKonsumenInputTime: TDateTimeField;
    tKonsumenOptId: TSmallintField;
    dsqLJenByr: TMyDataSource;
    qLJenByr: TMyQuery;
    qLJenByrIdJenisPembayaran: TSmallintField;
    qLJenByrKeterangan: TStringField;
    tSalesmanMktSts: TStringField;
    tSalesmanOptId: TSmallintField;
    dsqRefBank: TMyDataSource;
    qRefBank: TMyQuery;
    qRefBankNamaBank: TStringField;
    dstKPR: TMyDataSource;
    tKPR: TMyTable;
    tKPRNamaBank: TStringField;
    tKPRSukuBunga: TFloatField;
    tKPRTenor: TSmallintField;
    tKPRKoefisien: TFloatField;
    tKPRInitialInput: TDateTimeField;
    tKPROptId: TSmallintField;
    dsqMKPR: TMyDataSource;
    qMKPR: TMyQuery;
    qMKPRNamaBank: TStringField;
    qMKPRSukuBunga: TFloatField;
    qMKPRTenor: TSmallintField;
    qMKPRKoefisien: TFloatField;
    qMKPRInitialInput: TDateTimeField;
    qMKPROptId: TSmallintField;
    qMKavlingHAJBPlan: TFloatField;
    tHargaPPNRate: TFloatField;
    tHargaBPHTBRate: TFloatField;
    tHargaPPhRate: TFloatField;
    tHargaBBNRate: TFloatField;
    tHargaCekSertipikatRate: TFloatField;
    tHargaMinUMRate: TFloatField;
    tHargaBiayaKPRRate: TFloatField;
    tHargaPengurangBPHTB: TFloatField;
    tHargaPenambahCek: TFloatField;
    tHargaBiayaLain: TFloatField;
    tHargaBookingFee: TFloatField;
    tHargaPenambahAJB: TFloatField;
    tKavlingHAJBPlan: TFloatField;
    tHargaProTip: TStringField;
    qMHargaPPNRate: TFloatField;
    qMHargaBPHTBRate: TFloatField;
    qMHargaPPhRate: TFloatField;
    qMHargaBBNRate: TFloatField;
    qMHargaCekSertipikatRate: TFloatField;
    qMHargaMinUMRate: TFloatField;
    qMHargaBiayaKPRRate: TFloatField;
    qMHargaPengurangBPHTB: TFloatField;
    qMHargaPenambahCek: TFloatField;
    qMHargaPenambahAJB: TFloatField;
    qMHargaBiayaLain: TFloatField;
    qMHargaBookingFee: TFloatField;
    tKavlingIsContoh: TStringField;
    qMKavlingIsContoh: TStringField;
    tKavlingRC: TStringField;
    tHargaRevisiKe: TStringField;
    qMHargaRevisiKe: TStringField;
    dsqLRevKe: TMyDataSource;
    qLRevKe: TMyQuery;
    qLRevKeRevisiKe: TStringField;
    Function MyMessageDialog(Title, Text: string; DlgType: TMsgDlgType;
             Buttons: TMsgDlgButtons; BtnCaptions: array of string): Integer;
    procedure DataModuleCreate(Sender: TObject);
    procedure ConGlobalAfterConnect(Sender: TObject);
    procedure tTipeCalcFields(DataSet: TDataSet);
    procedure tKavlingCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public                      
      vLoggedIn, vIsInput, vOnGoingProcess: Boolean;
      vOptId: Integer;
      vServer, LastVerStr, AppDesc, vNamaOpt, vUserLogin, vLevelOpt, vOptSts: String;
  end;

var
  FDMC: TFDMC;

implementation

{$R *.dfm}

{ TFDMC }

procedure TFDMC.DataModuleCreate(Sender: TObject);  
var
  ConnectionIni : TIniFile;
begin
   ConGlobal.Disconnect;      
   ConnectionIni      := TIniFile.Create(ExtractFilePath(Application.EXEName) + 'Config.ini');
   ConGlobal.Server   := ConnectionIni.ReadString('SERVER', 'Server', '');
   if ConGlobal.Server = '35.198.247.21' then
   begin
      ConGlobal.Username := 'irmatania';
      ConGlobal.Password := '6071337';
      ConGlobal.Port     := 3306;
   end else
   begin
      ConGlobal.Username := 'root';
      ConGlobal.Password := 'a';
      ConGlobal.Port     := 3306;
   end;
   
   try
      ConGlobal.Connect;
      ConGlobal.Open;
      vServer                    := ConGlobal.Server;
      SysUtils.DecimalSeparator  := ',';
      SysUtils.ThousandSeparator := '.';
   except
     on E : Exception do
     begin
        MyMessageDialog('Peringatan', 'Terjadi error koneksi dengan server !'+#13+
                        'Aplikasi dihentikan ...', mtWarning, [mbOK], ['OK']);
        Application.Terminate;
     end;
   end;
end;
     
procedure TFDMC.ConGlobalAfterConnect(Sender: TObject);
begin 
   tUser.Open;
   tProyek.Open;
   tTipe.Open;
   tKavling.Open;
   tHarga.Open;
   tBonus.Open;
   tSalesman.Open;
   tKonsumen.Open;
   tKPR.Open;
   qLJenByr.Open;
   qRefBank.Open;
end;

procedure TFDMC.tTipeCalcFields(DataSet: TDataSet);
begin
   tTipe.FieldByName('ProTip').AsString := tTipe.FieldByName('NamaProyek').AsString+' - '+tTipe.FieldByName('NamaType').AsString;
end;

function TFDMC.MyMessageDialog(Title, Text: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; BtnCaptions: array of string): Integer;
var
    dlgButton: TButton;
    i, BtnIndex: Integer;
begin
   with CreateMessageDialog(Text, DlgType, Buttons) do
   begin
      BtnIndex := 0;
      Caption := Title;
      for i := 0 to ComponentCount - 1 do
        if (Components[i] is TButton) then
        begin
            dlgButton := TButton(Components[i]);
            if BtnIndex > High(BtnCaptions) then Break;
            dlgButton.Caption := BtnCaptions[BtnIndex];
            Inc(BtnIndex);
        end;
      Result := ShowModal;
   end;
end;

procedure TFDMC.tKavlingCalcFields(DataSet: TDataSet);
begin
   if tKavling.FieldByName('IsContoh').AsString = 'T' then
      tKavling.FieldByName('RC').AsString := 'Tidak' else
      tKavling.FieldByName('RC').AsString := 'Ya';
end;

end.
