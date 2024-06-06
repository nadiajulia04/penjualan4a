object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 192
  Top = 152
  Height = 365
  Width = 629
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\acer\OneDrive\Documents\DELPHIVISUAL2\libmysql.dll'
    Left = 24
    Top = 24
  end
  object ZKategori: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kategori')
    Params = <>
    Left = 96
    Top = 24
  end
  object ZSatuan: TZQuery
    Params = <>
    Left = 160
    Top = 24
  end
  object ZUser: TZQuery
    Params = <>
    Left = 224
    Top = 24
  end
  object ZSupplier: TZQuery
    Params = <>
    Left = 280
    Top = 24
  end
  object ZBarang: TZQuery
    Params = <>
    Left = 328
    Top = 24
  end
  object ZKustomer: TZQuery
    Params = <>
    Left = 376
    Top = 24
  end
  object dskategori: TDataSource
    DataSet = ZKategori
    Left = 104
    Top = 128
  end
  object dssatuan: TDataSource
    Left = 168
    Top = 128
  end
  object dsuser: TDataSource
    Left = 232
    Top = 128
  end
  object dssupplier: TDataSource
    Left = 280
    Top = 128
  end
  object dsbarang: TDataSource
    Left = 328
    Top = 128
  end
  object dskustomer: TDataSource
    Left = 376
    Top = 128
  end
end
