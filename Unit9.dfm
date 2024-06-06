object Form9: TForm9
  Left = 158
  Top = 158
  Width = 928
  Height = 480
  Caption = 'kustomer'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 168
    Top = 88
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object lb1: TLabel
    Left = 128
    Top = 344
    Width = 86
    Height = 13
    Caption = 'MASUKKAN NAMA'
  end
  object edt1: TEdit
    Left = 232
    Top = 80
    Width = 321
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 248
    Top = 136
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 368
    Top = 136
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 480
    Top = 136
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = btn3Click
  end
  object dbgrd1: TDBGrid
    Left = 240
    Top = 184
    Width = 320
    Height = 120
    DataSource = DataModule1.dskustomer
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edt2: TEdit
    Left = 248
    Top = 336
    Width = 313
    Height = 21
    TabOrder = 5
  end
  object btn4: TButton
    Left = 376
    Top = 376
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 6
  end
end
