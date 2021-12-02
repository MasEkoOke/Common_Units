object FDMC: TFDMC
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 441
  Top = 241
  Height = 356
  Width = 860
  object ConGlobal: TMyConnection
    Database = 'jingga'
    Username = 'root'
    Server = 'localhost'
    AfterConnect = ConGlobalAfterConnect
    LoginPrompt = False
    Left = 32
    Top = 32
    EncryptedPassword = '9EFF'
  end
  object dsqMUser: TMyDataSource
    DataSet = qMUser
    Left = 32
    Top = 176
  end
  object qMUser: TMyQuery
    Connection = ConGlobal
    SQL.Strings = (
      'SELECT * FROM mstuser WHERE OptId IS NULL')
    Options.FieldOrigins = foNone
    Left = 32
    Top = 160
    object qMUserOptId: TSmallintField
      FieldName = 'OptId'
    end
    object qMUserNamaOpt: TStringField
      FieldName = 'NamaOpt'
      Size = 50
    end
    object qMUserUsername: TStringField
      FieldName = 'Username'
      FixedChar = True
      Size = 15
    end
    object qMUserPassword: TStringField
      FieldName = 'Password'
      FixedChar = True
      Size = 25
    end
    object qMUserLevelOpt: TStringField
      FieldName = 'LevelOpt'
      Size = 25
    end
    object qMUserOptSts: TStringField
      FieldName = 'OptSts'
      FixedChar = True
      Size = 1
    end
    object qMUserInitialInput: TDateTimeField
      FieldName = 'InitialInput'
    end
  end
  object dsqMSalesman: TMyDataSource
    DataSet = qMSalesman
    Left = 488
    Top = 176
  end
  object qMSalesman: TMyQuery
    Connection = ConGlobal
    SQL.Strings = (
      'SELECT * FROM mstsalesman WHERE IdMarketing IS NULL')
    Options.FieldOrigins = foNone
    Left = 488
    Top = 160
    object qMSalesmanIdMarketing: TIntegerField
      FieldName = 'IdMarketing'
    end
    object qMSalesmanNamaMarketing: TStringField
      FieldName = 'NamaMarketing'
      Size = 50
    end
    object qMSalesmanBesaranFee: TFloatField
      FieldName = 'BesaranFee'
    end
    object qMSalesmanMktSts: TStringField
      FieldName = 'MktSts'
      FixedChar = True
      Size = 1
    end
    object qMSalesmanInputTime: TDateTimeField
      FieldName = 'InputTime'
    end
    object qMSalesmanOptId: TSmallintField
      FieldName = 'OptId'
    end
  end
  object dsqMProyek: TMyDataSource
    DataSet = qMProyek
    Left = 104
    Top = 176
  end
  object qMProyek: TMyQuery
    Connection = ConGlobal
    SQL.Strings = (
      'SELECT * FROM mstproyek WHERE IdProyek IS NULL')
    Options.FieldOrigins = foNone
    Left = 104
    Top = 160
    object qMProyekIdProyek: TIntegerField
      FieldName = 'IdProyek'
    end
    object qMProyekNamaProyek: TStringField
      FieldName = 'NamaProyek'
      Size = 60
    end
    object qMProyekAlamatProyek: TStringField
      FieldName = 'AlamatProyek'
      Size = 80
    end
    object qMProyekNoKontak: TStringField
      FieldName = 'NoKontak'
      Size = 16
    end
    object qMProyekNIBInduk: TStringField
      FieldName = 'NIBInduk'
      Size = 15
    end
    object qMProyekSHMInduk: TStringField
      FieldName = 'SHMInduk'
      Size = 35
    end
    object qMProyekLuas: TFloatField
      FieldName = 'Luas'
    end
    object qMProyekInputTime: TDateTimeField
      FieldName = 'InputTime'
    end
    object qMProyekOptId: TSmallintField
      FieldName = 'OptId'
    end
  end
  object dsqMTipe: TMyDataSource
    DataSet = qMTipe
    Left = 184
    Top = 176
  end
  object qMTipe: TMyQuery
    Connection = ConGlobal
    SQL.Strings = (
      'SELECT * FROM msttype WHERE IdType IS NULL;')
    Options.FieldOrigins = foNone
    Left = 184
    Top = 160
    object qMTipeIdType: TIntegerField
      FieldName = 'IdType'
    end
    object qMTipeIdProyek: TIntegerField
      FieldName = 'IdProyek'
    end
    object qMTipeNamaType: TStringField
      FieldName = 'NamaType'
      Size = 40
    end
    object qMTipeInputTime: TDateTimeField
      FieldName = 'InputTime'
    end
    object qMTipeOptId: TSmallintField
      FieldName = 'OptId'
    end
    object qMTipeKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 255
    end
  end
  object dsqMKavling: TMyDataSource
    DataSet = qMKavling
    Left = 256
    Top = 176
  end
  object qMKavling: TMyQuery
    Connection = ConGlobal
    SQL.Strings = (
      'SELECT * FROM mstkavling WHERE IdKavling IS NULL')
    Options.FieldOrigins = foNone
    Left = 256
    Top = 160
    object qMKavlingIdKavling: TIntegerField
      FieldName = 'IdKavling'
    end
    object qMKavlingIdType: TIntegerField
      FieldName = 'IdType'
    end
    object qMKavlingKodeKavling: TStringField
      FieldName = 'KodeKavling'
      Size = 6
    end
    object qMKavlingPosisiRumah: TStringField
      FieldName = 'PosisiRumah'
      Size = 5
    end
    object qMKavlingNIBSplit: TStringField
      FieldName = 'NIBSplit'
      Size = 10
    end
    object qMKavlingSHMSplit: TStringField
      FieldName = 'SHMSplit'
      Size = 35
    end
    object qMKavlingLuasBangunan: TFloatField
      FieldName = 'LuasBangunan'
    end
    object qMKavlingLuasTanahStandar: TFloatField
      FieldName = 'LuasTanahStandar'
    end
    object qMKavlingLuasTanahBPN: TFloatField
      FieldName = 'LuasTanahBPN'
    end
    object qMKavlingLebihKurangLuas: TFloatField
      FieldName = 'LebihKurangLuas'
    end
    object qMKavlingKeteranganProgres: TStringField
      FieldName = 'KeteranganProgres'
      Size = 15
    end
    object qMKavlingPersentaseProgres: TFloatField
      FieldName = 'PersentaseProgres'
    end
    object qMKavlingInputTime: TDateTimeField
      FieldName = 'InputTime'
    end
    object qMKavlingOptId: TSmallintField
      FieldName = 'OptId'
    end
    object qMKavlingHAJBPlan: TFloatField
      FieldName = 'HAJBPlan'
      DisplayFormat = '#,#,0'
    end
    object qMKavlingIsContoh: TStringField
      FieldName = 'IsContoh'
      FixedChar = True
      Size = 1
    end
  end
  object dsqMBonus: TMyDataSource
    DataSet = qMBonus
    Left = 408
    Top = 176
  end
  object qMBonus: TMyQuery
    Connection = ConGlobal
    SQL.Strings = (
      'SELECT * FROM mstbonus WHERE IdBonus IS NULL')
    Options.FieldOrigins = foNone
    Left = 408
    Top = 160
    object qMBonusIdBonus: TIntegerField
      FieldName = 'IdBonus'
    end
    object qMBonusNamaBonus: TStringField
      FieldName = 'NamaBonus'
      Size = 100
    end
    object qMBonusBesarBonus: TFloatField
      FieldName = 'BesarBonus'
      DisplayFormat = '#,#,0'
    end
    object qMBonusInputTime: TDateTimeField
      FieldName = 'InputTime'
    end
    object qMBonusOptId: TSmallintField
      FieldName = 'OptId'
    end
  end
  object dsqMHarga: TMyDataSource
    DataSet = qMHarga
    Left = 336
    Top = 176
  end
  object qMHarga: TMyQuery
    Connection = ConGlobal
    SQL.Strings = (
      'SELECT * FROM mstharga WHERE IdHarga IS NULL')
    Options.FieldOrigins = foNone
    UpdatingTable = 'mstharga'
    Left = 336
    Top = 160
    object qMHargaIdHarga: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IdHarga'
      Origin = 'mstharga.IdHarga'
    end
    object qMHargaIdType: TIntegerField
      FieldName = 'IdType'
      Origin = 'mstharga.IdType'
    end
    object qMHargaHargaMembangun: TFloatField
      FieldName = 'HargaMembangun'
      Origin = 'mstharga.HargaMembangun'
      DisplayFormat = '#,#,0'
    end
    object qMHargaHargaSatuanTanah: TFloatField
      FieldName = 'HargaSatuanTanah'
      Origin = 'mstharga.HargaSatuanTanah'
      DisplayFormat = '#,#,0'
    end
    object qMHargaHargaSatuanBangunan: TFloatField
      FieldName = 'HargaSatuanBangunan'
      Origin = 'mstharga.HargaSatuanBangunan'
      DisplayFormat = '#,#,0'
    end
    object qMHargaHargaSatuanLebihKurang: TFloatField
      FieldName = 'HargaSatuanLebihKurang'
      Origin = 'mstharga.HargaSatuanLebihKurang'
      DisplayFormat = '#,#,0'
    end
    object qMHargaTambahanDiskon: TFloatField
      FieldName = 'TambahanDiskon'
      Origin = 'mstharga.TambahanDiskon'
      DisplayFormat = '#,#,0'
    end
    object qMHargaHargaJualStd: TFloatField
      FieldName = 'HargaJualStd'
      Origin = 'mstharga.HargaJualStd'
      DisplayFormat = '#,#,0'
    end
    object qMHargaDiscountTunai: TFloatField
      FieldName = 'DiscountTunai'
      Origin = 'mstharga.DiscountTunai'
      DisplayFormat = '#,#,0'
    end
    object qMHargaInputTime: TDateTimeField
      FieldName = 'InputTime'
      Origin = 'mstharga.InputTime'
    end
    object qMHargaKeterangan: TStringField
      FieldName = 'Keterangan'
      Origin = 'mstharga.Keterangan'
      Size = 255
    end
    object qMHargaOptId: TSmallintField
      FieldName = 'OptId'
      Origin = 'mstharga.OptId'
    end
    object qMHargaPPNRate: TFloatField
      FieldName = 'PPNRate'
    end
    object qMHargaBPHTBRate: TFloatField
      FieldName = 'BPHTBRate'
    end
    object qMHargaPPhRate: TFloatField
      FieldName = 'PPhRate'
    end
    object qMHargaBBNRate: TFloatField
      FieldName = 'BBNRate'
    end
    object qMHargaCekSertipikatRate: TFloatField
      FieldName = 'CekSertipikatRate'
    end
    object qMHargaMinUMRate: TFloatField
      FieldName = 'MinUMRate'
    end
    object qMHargaBiayaKPRRate: TFloatField
      FieldName = 'BiayaKPRRate'
    end
    object qMHargaPengurangBPHTB: TFloatField
      FieldName = 'PengurangBPHTB'
      DisplayFormat = '#,#,0'
    end
    object qMHargaPenambahCek: TFloatField
      FieldName = 'PenambahCek'
      DisplayFormat = '#,#,0'
    end
    object qMHargaPenambahAJB: TFloatField
      FieldName = 'PenambahAJB'
      DisplayFormat = '#,#,0'
    end
    object qMHargaBiayaLain: TFloatField
      FieldName = 'BiayaLain'
      DisplayFormat = '#,#,0'
    end
    object qMHargaBookingFee: TFloatField
      FieldName = 'BookingFee'
      DisplayFormat = '#,#,0'
    end
    object qMHargaRevisiKe: TStringField
      FieldName = 'RevisiKe'
      Size = 4
    end
  end
  object dstUser: TMyDataSource
    DataSet = tUser
    Left = 32
    Top = 104
  end
  object tUser: TMyTable
    TableName = 'mstuser'
    Connection = ConGlobal
    Left = 32
    Top = 88
    object tUserOptId: TSmallintField
      FieldName = 'OptId'
      Visible = False
    end
    object tUserNamaOpt: TStringField
      DisplayLabel = 'Nama Pengguna'
      FieldName = 'NamaOpt'
      Size = 50
    end
    object tUserUsername: TStringField
      DisplayLabel = 'Login'
      FieldName = 'Username'
      FixedChar = True
      Size = 15
    end
    object tUserPassword: TStringField
      FieldName = 'Password'
      ProviderFlags = [pfInUpdate, pfInWhere, pfHidden]
      FixedChar = True
      Size = 25
    end
    object tUserLevelOpt: TStringField
      DisplayLabel = 'Level Pengguna'
      FieldName = 'LevelOpt'
      Size = 25
    end
    object tUserOptSts: TStringField
      FieldName = 'OptSts'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tUserInitialInput: TDateTimeField
      FieldName = 'InitialInput'
    end
  end
  object dstSalesman: TMyDataSource
    DataSet = tSalesman
    Left = 488
    Top = 104
  end
  object tSalesman: TMyTable
    TableName = 'mstsalesman'
    Connection = ConGlobal
    Left = 488
    Top = 88
    object tSalesmanNamaMarketing: TStringField
      DisplayLabel = 'Nama'
      DisplayWidth = 12
      FieldName = 'NamaMarketing'
      Origin = 'mstsalesman.NamaMarketing'
      Size = 50
    end
    object tSalesmanBesaranFee: TFloatField
      DisplayLabel = 'Fee'
      DisplayWidth = 10
      FieldName = 'BesaranFee'
      Origin = 'mstsalesman.BesaranFee'
    end
    object tSalesmanInputTime: TDateTimeField
      DisplayLabel = 'Diinput Pada'
      DisplayWidth = 18
      FieldName = 'InputTime'
      Origin = 'mstsalesman.InputTime'
    end
    object tSalesmanIdMarketing: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'ID'
      DisplayWidth = 10
      FieldName = 'IdMarketing'
      Origin = 'mstsalesman.IdMarketing'
      Visible = False
    end
    object tSalesmanMktSts: TStringField
      FieldName = 'MktSts'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tSalesmanOptId: TSmallintField
      FieldName = 'OptId'
      Visible = False
    end
  end
  object dstProyek: TMyDataSource
    DataSet = tProyek
    Left = 104
    Top = 104
  end
  object tProyek: TMyTable
    TableName = 'mstproyek'
    Connection = ConGlobal
    Options.FieldOrigins = foNone
    Left = 104
    Top = 88
    object tProyekNamaProyek: TStringField
      DisplayWidth = 26
      FieldName = 'NamaProyek'
      Origin = 'mstproyek.NamaProyek'
      Size = 60
    end
    object tProyekIdProyek: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 9
      FieldName = 'IdProyek'
      Origin = 'mstproyek.IdProyek'
      Visible = False
    end
    object tProyekAlamatProyek: TStringField
      DisplayLabel = 'Alamat'
      DisplayWidth = 80
      FieldName = 'AlamatProyek'
      Origin = 'mstproyek.AlamatProyek'
      Visible = False
      Size = 80
    end
    object tProyekNoKontak: TStringField
      DisplayLabel = 'No. Kontak'
      DisplayWidth = 16
      FieldName = 'NoKontak'
      Origin = 'mstproyek.NoKontak'
      Visible = False
      Size = 16
    end
    object tProyekNIBInduk: TStringField
      DisplayLabel = 'NIB Induk'
      DisplayWidth = 15
      FieldName = 'NIBInduk'
      Origin = 'mstproyek.NIBInduk'
      Visible = False
      Size = 15
    end
    object tProyekSHMInduk: TStringField
      DisplayLabel = 'SHM Induk'
      DisplayWidth = 35
      FieldName = 'SHMInduk'
      Origin = 'mstproyek.SHMInduk'
      Visible = False
      Size = 35
    end
    object tProyekLuas: TFloatField
      DisplayLabel = 'Luas (Ha)'
      DisplayWidth = 10
      FieldName = 'Luas'
      Origin = 'mstproyek.Luas'
      Visible = False
    end
    object tProyekInputTime: TDateTimeField
      DisplayLabel = 'Diinput Pada'
      DisplayWidth = 18
      FieldName = 'InputTime'
      Origin = 'mstproyek.InputTime'
      Visible = False
    end
    object tProyekOptId: TSmallintField
      DisplayWidth = 10
      FieldName = 'OptId'
      Origin = 'mstproyek.OptId'
      Visible = False
    end
  end
  object qTemp: TMyQuery
    Connection = ConGlobal
    Left = 184
    Top = 32
  end
  object dsqPosisi: TMyDataSource
    DataSet = qPosisi
    Left = 32
    Top = 248
  end
  object qPosisi: TMyQuery
    Connection = ConGlobal
    SQL.Strings = (
      'SELECT DISTINCT(LevelOpt) AS Posisi FROM mstuser')
    Options.FieldOrigins = foNone
    Left = 32
    Top = 232
    object qPosisiPosisi: TStringField
      FieldName = 'Posisi'
      Size = 25
    end
  end
  object dstTipe: TMyDataSource
    DataSet = tTipe
    Left = 184
    Top = 104
  end
  object tTipe: TMyTable
    TableName = 'msttype'
    Connection = ConGlobal
    OnCalcFields = tTipeCalcFields
    Options.FieldOrigins = foNone
    Left = 184
    Top = 88
    object tTipeNamaType: TStringField
      DisplayLabel = 'Type'
      DisplayWidth = 16
      FieldName = 'NamaType'
      Origin = 'msttype.NamaType'
      Size = 40
    end
    object tTipeNamaProyek: TStringField
      DisplayLabel = 'Proyek'
      DisplayWidth = 28
      FieldKind = fkLookup
      FieldName = 'NamaProyek'
      LookupDataSet = tProyek
      LookupKeyFields = 'IdProyek'
      LookupResultField = 'NamaProyek'
      KeyFields = 'IdProyek'
      Size = 60
      Lookup = True
    end
    object tTipeKeterangan: TStringField
      FieldName = 'Keterangan'
      Origin = 'msttype.Keterangan'
      Visible = False
      Size = 255
    end
    object tTipeInputTime: TDateTimeField
      DisplayLabel = 'Diinput Pada'
      FieldName = 'InputTime'
      Origin = 'msttype.InputTime'
      Visible = False
    end
    object tTipeProTip: TStringField
      DisplayWidth = 100
      FieldKind = fkCalculated
      FieldName = 'ProTip'
      Visible = False
      Size = 100
      Calculated = True
    end
    object tTipeIdType: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IdType'
      Origin = 'msttype.IdType'
      Visible = False
    end
    object tTipeIdProyek: TIntegerField
      FieldName = 'IdProyek'
      Origin = 'msttype.IdProyek'
      Visible = False
    end
    object tTipeOptId: TSmallintField
      FieldName = 'OptId'
      Origin = 'msttype.OptId'
      Visible = False
    end
  end
  object dstKavling: TMyDataSource
    DataSet = tKavling
    Left = 256
    Top = 104
  end
  object tKavling: TMyTable
    TableName = 'mstkavling'
    Connection = ConGlobal
    OnCalcFields = tKavlingCalcFields
    Options.FieldOrigins = foNone
    Left = 256
    Top = 88
    object tKavlingIdKavling: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IdKavling'
      Origin = 'mstkavling.IdKavling'
      Visible = False
    end
    object tKavlingIdType: TIntegerField
      FieldName = 'IdType'
      Origin = 'mstkavling.IdType'
      Visible = False
    end
    object tKavlingKodeKavling: TStringField
      Alignment = taCenter
      DisplayLabel = 'Kode Kavling'
      FieldName = 'KodeKavling'
      Origin = 'mstkavling.KodeKavling'
      Size = 6
    end
    object tKavlingHAJBPlan: TFloatField
      DisplayLabel = 'H.AJB Rencana'
      FieldName = 'HAJBPlan'
      DisplayFormat = '#,#,0'
    end
    object tKavlingPosisiRumah: TStringField
      Alignment = taCenter
      DisplayLabel = 'Posisi Rumah'
      FieldName = 'PosisiRumah'
      Origin = 'mstkavling.PosisiRumah'
      Size = 5
    end
    object tKavlingNIBSplit: TStringField
      DisplayLabel = 'NIB Split'
      FieldName = 'NIBSplit'
      Origin = 'mstkavling.NIBSplit'
      Size = 10
    end
    object tKavlingSHMSplit: TStringField
      DisplayLabel = 'SHM Split'
      FieldName = 'SHMSplit'
      Origin = 'mstkavling.SHMSplit'
      Size = 35
    end
    object tKavlingLuasBangunan: TFloatField
      DisplayLabel = 'Luas Bangunan'
      FieldName = 'LuasBangunan'
      Origin = 'mstkavling.LuasBangunan'
    end
    object tKavlingLuasTanahStandar: TFloatField
      DisplayLabel = 'Luas Tanah Standar'
      FieldName = 'LuasTanahStandar'
      Origin = 'mstkavling.LuasTanahStandar'
    end
    object tKavlingLuasTanahBPN: TFloatField
      DisplayLabel = 'Luas Tanah BPN'
      FieldName = 'LuasTanahBPN'
      Origin = 'mstkavling.LuasTanahBPN'
    end
    object tKavlingLebihKurangLuas: TFloatField
      DisplayLabel = 'Luas Lebih Kurang'
      FieldName = 'LebihKurangLuas'
      Origin = 'mstkavling.LebihKurangLuas'
    end
    object tKavlingPersentaseProgres: TFloatField
      DisplayLabel = 'Progres (%)'
      FieldName = 'PersentaseProgres'
      Origin = 'mstkavling.PersentaseProgres'
    end
    object tKavlingKeteranganProgres: TStringField
      DisplayLabel = 'Keterangan Progres'
      DisplayWidth = 15
      FieldName = 'KeteranganProgres'
      Origin = 'mstkavling.KeteranganProgres'
      Size = 15
    end
    object tKavlingInputTime: TDateTimeField
      DisplayLabel = 'Diinput Pada'
      FieldName = 'InputTime'
      Origin = 'mstkavling.InputTime'
    end
    object tKavlingOptId: TSmallintField
      FieldName = 'OptId'
      Origin = 'mstkavling.OptId'
      Visible = False
    end
    object tKavlingProTip: TStringField
      FieldKind = fkLookup
      FieldName = 'ProTip'
      LookupDataSet = tTipe
      LookupKeyFields = 'IdType'
      LookupResultField = 'ProTip'
      KeyFields = 'IdType'
      Visible = False
      Size = 100
      Lookup = True
    end
    object tKavlingIsContoh: TStringField
      FieldName = 'IsContoh'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object tKavlingRC: TStringField
      DisplayLabel = 'Rumah Contoh'
      FieldKind = fkCalculated
      FieldName = 'RC'
      Visible = False
      Size = 5
      Calculated = True
    end
  end
  object dstKonsumen: TMyDataSource
    DataSet = tKonsumen
    Left = 576
    Top = 104
  end
  object tKonsumen: TMyTable
    TableName = 'mstkonsumen'
    OrderFields = 'NamaKonsumen'
    Connection = ConGlobal
    Left = 576
    Top = 88
    object tKonsumenIdKonsumen: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IdKonsumen'
      Origin = 'mstkonsumen.IdKonsumen'
      Visible = False
    end
    object tKonsumenNamaKonsumen: TStringField
      DisplayLabel = 'Nama Konsumen'
      FieldName = 'NamaKonsumen'
      Origin = 'mstkonsumen.NamaKonsumen'
      Size = 80
    end
    object tKonsumenAlamat: TStringField
      DisplayWidth = 150
      FieldName = 'Alamat'
      Origin = 'mstkonsumen.Alamat'
      Size = 150
    end
    object tKonsumenNoKontak: TStringField
      DisplayLabel = 'No. Kontak'
      FieldName = 'NoKontak'
      Origin = 'mstkonsumen.NoKontak'
      Size = 15
    end
    object tKonsumenNIK: TStringField
      FieldName = 'NIK'
      Origin = 'mstkonsumen.NIK'
      Size = 25
    end
    object tKonsumenInputTime: TDateTimeField
      DisplayLabel = 'Diinput Pada'
      FieldName = 'InputTime'
      Origin = 'mstkonsumen.InputTime'
    end
    object tKonsumenOptId: TSmallintField
      FieldName = 'OptId'
      Origin = 'mstkonsumen.OptId'
      Visible = False
    end
  end
  object dsqMKonsumen: TMyDataSource
    DataSet = qMKonsumen
    Left = 576
    Top = 177
  end
  object qMKonsumen: TMyQuery
    Connection = ConGlobal
    SQL.Strings = (
      'SELECT * FROM mstkonsumen WHERE IdKonsumen IS NULL')
    Options.FieldOrigins = foNone
    Left = 576
    Top = 161
    object qMKonsumenIdKonsumen: TIntegerField
      FieldName = 'IdKonsumen'
    end
    object qMKonsumenNamaKonsumen: TStringField
      FieldName = 'NamaKonsumen'
      Size = 80
    end
    object qMKonsumenAlamat: TStringField
      DisplayWidth = 150
      FieldName = 'Alamat'
      Size = 150
    end
    object qMKonsumenNoKontak: TStringField
      FieldName = 'NoKontak'
      Size = 15
    end
    object qMKonsumenNIK: TStringField
      FieldName = 'NIK'
      Size = 25
    end
    object qMKonsumenInputTime: TDateTimeField
      FieldName = 'InputTime'
    end
    object qMKonsumenOptId: TSmallintField
      FieldName = 'OptId'
    end
  end
  object dstHarga: TMyDataSource
    DataSet = tHarga
    Left = 336
    Top = 104
  end
  object tHarga: TMyTable
    TableName = 'mstharga'
    Connection = ConGlobal
    Options.FieldOrigins = foNone
    Left = 336
    Top = 88
    object tHargaRevisiKe: TStringField
      DisplayLabel = 'Revisi Ke'
      DisplayWidth = 6
      FieldName = 'RevisiKe'
      Size = 4
    end
    object tHargaKeterangan: TStringField
      DisplayWidth = 20
      FieldName = 'Keterangan'
      Size = 255
    end
    object tHargaIdHarga: TIntegerField
      FieldName = 'IdHarga'
      Visible = False
    end
    object tHargaProTip: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'ProTip'
      LookupDataSet = tTipe
      LookupKeyFields = 'IdType'
      LookupResultField = 'ProTip'
      KeyFields = 'IdType'
      Visible = False
      Size = 100
      Lookup = True
    end
    object tHargaIdType: TIntegerField
      FieldName = 'IdType'
      Visible = False
    end
    object tHargaHargaSatuanBangunan: TFloatField
      DisplayLabel = 'Harga Bangunan/m2'
      DisplayWidth = 10
      FieldName = 'HargaSatuanBangunan'
      Visible = False
      DisplayFormat = '#,#,0'
    end
    object tHargaHargaSatuanTanah: TFloatField
      DisplayLabel = 'Harga Tanah/m2'
      DisplayWidth = 10
      FieldName = 'HargaSatuanTanah'
      Visible = False
      DisplayFormat = '#,#,0'
    end
    object tHargaHargaSatuanLebihKurang: TFloatField
      DisplayLabel = 'Harga Selisih Tanah/m2'
      DisplayWidth = 10
      FieldName = 'HargaSatuanLebihKurang'
      Visible = False
      DisplayFormat = '#,#,0'
    end
    object tHargaTambahanDiskon: TFloatField
      DisplayLabel = 'Tambahan Diskon'
      DisplayWidth = 10
      FieldName = 'TambahanDiskon'
      Visible = False
      DisplayFormat = '#,#,0'
    end
    object tHargaHargaMembangun: TFloatField
      DisplayLabel = 'Harga Pelaksanaan/m2'
      DisplayWidth = 10
      FieldName = 'HargaMembangun'
      Visible = False
      DisplayFormat = '#,#,0'
    end
    object tHargaHargaJualStd: TFloatField
      DisplayLabel = 'Harga Jual Std'
      FieldName = 'HargaJualStd'
      Visible = False
      DisplayFormat = '#,#,0'
    end
    object tHargaPPNRate: TFloatField
      DisplayLabel = 'PPN Rate'
      DisplayWidth = 10
      FieldName = 'PPNRate'
      Visible = False
    end
    object tHargaBPHTBRate: TFloatField
      DisplayLabel = 'BPHTB Rate'
      DisplayWidth = 10
      FieldName = 'BPHTBRate'
      Visible = False
    end
    object tHargaCekSertipikatRate: TFloatField
      DisplayLabel = 'AJB, BBN, PNPB,  Cek Sertipikat'
      DisplayWidth = 10
      FieldName = 'CekSertipikatRate'
      Visible = False
    end
    object tHargaPPhRate: TFloatField
      DisplayLabel = 'PPh Rate'
      DisplayWidth = 10
      FieldName = 'PPhRate'
      Visible = False
    end
    object tHargaMinUMRate: TFloatField
      DisplayLabel = 'UM. Minimum'
      DisplayWidth = 10
      FieldName = 'MinUMRate'
      Visible = False
    end
    object tHargaBiayaKPRRate: TFloatField
      DisplayLabel = 'Biaya KPR Rate'
      DisplayWidth = 10
      FieldName = 'BiayaKPRRate'
      Visible = False
    end
    object tHargaPengurangBPHTB: TFloatField
      DisplayLabel = 'Pengurang BPHTB'
      DisplayWidth = 10
      FieldName = 'PengurangBPHTB'
      Visible = False
    end
    object tHargaPenambahCek: TFloatField
      DisplayLabel = 'Penambah PNPB'
      DisplayWidth = 10
      FieldName = 'PenambahCek'
      Visible = False
    end
    object tHargaPenambahAJB: TFloatField
      DisplayLabel = 'Penambah BBN'
      DisplayWidth = 10
      FieldName = 'PenambahAJB'
      Visible = False
    end
    object tHargaBiayaLain: TFloatField
      DisplayLabel = 'Biaya Lainnya'
      DisplayWidth = 10
      FieldName = 'BiayaLain'
      Visible = False
    end
    object tHargaBookingFee: TFloatField
      DisplayLabel = 'Booking Fee'
      DisplayWidth = 10
      FieldName = 'BookingFee'
      Visible = False
    end
    object tHargaInputTime: TDateTimeField
      DisplayLabel = 'Diinput Pada'
      DisplayWidth = 18
      FieldName = 'InputTime'
      Visible = False
    end
    object tHargaDiscountTunai: TFloatField
      FieldName = 'DiscountTunai'
      Visible = False
    end
    object tHargaOptId: TSmallintField
      FieldName = 'OptId'
      Visible = False
    end
    object tHargaBBNRate: TFloatField
      FieldName = 'BBNRate'
      Visible = False
    end
  end
  object dstBonus: TMyDataSource
    DataSet = tBonus
    Left = 408
    Top = 104
  end
  object tBonus: TMyTable
    TableName = 'mstbonus'
    Connection = ConGlobal
    Left = 408
    Top = 88
    object tBonusIdBonus: TIntegerField
      FieldName = 'IdBonus'
      Visible = False
    end
    object tBonusNamaBonus: TStringField
      DisplayLabel = 'Nama Bonus'
      FieldName = 'NamaBonus'
      Size = 100
    end
    object tBonusBesarBonus: TFloatField
      DisplayLabel = 'Besar Bonus'
      FieldName = 'BesarBonus'
    end
    object tBonusInputTime: TDateTimeField
      DisplayLabel = 'Diinput Pada'
      FieldName = 'InputTime'
    end
    object tBonusOptId: TSmallintField
      FieldName = 'OptId'
      Visible = False
    end
  end
  object dsqLProType: TMyDataSource
    DataSet = qLProType
    Left = 104
    Top = 248
  end
  object qLProType: TMyQuery
    Connection = ConGlobal
    SQL.Strings = (
      'SELECT DISTINCT(LevelOpt) AS Posisi FROM mstuser')
    Options.FieldOrigins = foNone
    Left = 104
    Top = 232
  end
  object dsqLJenByr: TMyDataSource
    DataSet = qLJenByr
    Left = 184
    Top = 248
  end
  object qLJenByr: TMyQuery
    Connection = ConGlobal
    SQL.Strings = (
      'SELECT IdJenisPembayaran, Keterangan FROM refjenispembayaran')
    Options.FieldOrigins = foNone
    Left = 184
    Top = 232
    object qLJenByrKeterangan: TStringField
      DisplayWidth = 15
      FieldName = 'Keterangan'
      Size = 35
    end
    object qLJenByrIdJenisPembayaran: TSmallintField
      DisplayWidth = 10
      FieldName = 'IdJenisPembayaran'
      Visible = False
    end
  end
  object dsqRefBank: TMyDataSource
    DataSet = qRefBank
    Left = 256
    Top = 248
  end
  object qRefBank: TMyQuery
    Connection = ConGlobal
    SQL.Strings = (
      'SELECT * FROM refbank')
    Options.FieldOrigins = foNone
    Left = 256
    Top = 234
    object qRefBankNamaBank: TStringField
      DisplayWidth = 30
      FieldName = 'NamaBank'
      Size = 30
    end
  end
  object dstKPR: TMyDataSource
    DataSet = tKPR
    Left = 664
    Top = 104
  end
  object tKPR: TMyTable
    TableName = 'mstkpr'
    OrderFields = 'NamaBank, SukuBunga, Tenor'
    Connection = ConGlobal
    Left = 664
    Top = 88
    object tKPRNamaBank: TStringField
      DisplayLabel = 'Nama Bank'
      FieldName = 'NamaBank'
      Origin = 'mstkpr.NamaBank'
      Size = 15
    end
    object tKPRSukuBunga: TFloatField
      DisplayLabel = 'Suku Bunga'
      FieldName = 'SukuBunga'
      Origin = 'mstkpr.SukuBunga'
    end
    object tKPRTenor: TSmallintField
      FieldName = 'Tenor'
      Origin = 'mstkpr.Tenor'
    end
    object tKPRKoefisien: TFloatField
      FieldName = 'Koefisien'
      Origin = 'mstkpr.Koefisien'
    end
    object tKPRInitialInput: TDateTimeField
      DisplayLabel = 'Diinput Pada'
      FieldName = 'InitialInput'
      Origin = 'mstkpr.InitialInput'
    end
    object tKPROptId: TSmallintField
      FieldName = 'OptId'
      Origin = 'mstkpr.OptId'
      Visible = False
    end
  end
  object dsqMKPR: TMyDataSource
    DataSet = qMKPR
    Left = 664
    Top = 177
  end
  object qMKPR: TMyQuery
    Connection = ConGlobal
    SQL.Strings = (
      
        'SELECT * FROM mstkpr WHERE NamaBank = '#39#39' AND SukuBunga = 1 AND T' +
        'enor = 1 AND OptId = :vOptId;')
    Options.FieldOrigins = foNone
    Left = 664
    Top = 161
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vOptId'
      end>
    object qMKPRNamaBank: TStringField
      FieldName = 'NamaBank'
      Size = 15
    end
    object qMKPRSukuBunga: TFloatField
      FieldName = 'SukuBunga'
    end
    object qMKPRTenor: TSmallintField
      FieldName = 'Tenor'
    end
    object qMKPRKoefisien: TFloatField
      FieldName = 'Koefisien'
    end
    object qMKPRInitialInput: TDateTimeField
      FieldName = 'InitialInput'
    end
    object qMKPROptId: TSmallintField
      FieldName = 'OptId'
    end
  end
  object dsqLRevKe: TMyDataSource
    DataSet = qLRevKe
    Left = 336
    Top = 247
  end
  object qLRevKe: TMyQuery
    Connection = ConGlobal
    SQL.Strings = (
      
        'SELECT DISTINCT(RevisiKe) FROM mstharga ORDER BY LENGTH(RevisiKe' +
        '), RevisiKe;')
    Options.FieldOrigins = foNone
    Left = 336
    Top = 232
    object qLRevKeRevisiKe: TStringField
      DisplayWidth = 4
      FieldName = 'RevisiKe'
      Size = 4
    end
  end
end
