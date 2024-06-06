object Form8: TForm8
  Left = 188
  Top = 152
  Width = 928
  Height = 480
  Caption = 'Barang'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object NAMA: TLabel
    Left = 176
    Top = 72
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object ld1: TLabel
    Left = 120
    Top = 328
    Width = 88
    Height = 13
    Caption = 'MASUKKAN  NAME'
  end
  object edt1: TEdit
    Left = 232
    Top = 64
    Width = 393
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 320
    Top = 112
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 1
  end
  object btn2: TButton
    Left = 424
    Top = 112
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 2
  end
  object btn3: TButton
    Left = 528
    Top = 112
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 3
  end
  object N: TDBGrid
    Left = 304
    Top = 160
    Width = 320
    Height = 120
    DataSource = DataModule1.dsbarang
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edt2: TEdit
    Left = 240
    Top = 320
    Width = 385
    Height = 21
    TabOrder = 5
  end
  object btn4: TButton
    Left = 384
    Top = 360
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 6
  end
end
