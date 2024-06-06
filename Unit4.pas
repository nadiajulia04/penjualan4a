unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm4 = class(TForm)
    NAMA: TLabel;
    ld1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    N: TDBGrid;
    edt2: TEdit;
    btn4: TButton;
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure NCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  a:string;
  
implementation

uses datamodule4;

{$R *.dfm}

procedure TForm4.btn1Click(Sender: TObject);
begin
DataModule1.ZSatuan.SQL.Clear;
DataModule1.ZSatuan.SQL.Add('insert into satuan values(null, "'+edt1.Text+'")');
DataModule1.ZSatuan.ExecSQL;

DataModule1.ZSatuan.SQL.Clear;
DataModule1.ZSatuan.SQL.Add('select * from satuan');
DataModule1.ZSatuan.Open;
ShowMessage ('Data Berhasil disimpan!');
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
  DataModule1.ZSatuan.SQL.Clear;
  DataModule1.ZSatuan.SQL.Add('update satuan set name="'+edt1.Text+'" where id= '+a);
  DataModule1.ZSatuan.ExecSQL;

  DataModule1.ZSatuan.SQL.Clear;
  DataModule1.ZSatuan.SQL.Add('select * from satuan');
  DataModule1.ZSatuan.Open;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
DataModule1.ZSatuan.SQL.Clear;
DataModule1.ZSatuan.SQL.Add('delete * from satuan where id='+a);
DataModule1.ZSatuan.ExecSQL;

DataModule1.ZSatuan.SQL.Clear;
DataModule1.ZSatuan.SQL.Add('select * from satuan');
DataModule1.ZSatuan.Open;
ShowMessage ('Data Berhasil didelete!');
end;

procedure TForm4.NCellClick(Column: TColumn);
begin
   edt1.Text:= DataModule1.ZSatuan.Fields[1].AsString;
a:=DataModule1.ZSatuan.Fields[0].AsString
end;

end.
 