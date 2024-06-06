unit Kategori;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    edt1: TEdit;
    NAMA: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    N: TDBGrid;
    ld1: TLabel;
    edt2: TEdit;
    btn4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure NCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a:string;

implementation

uses datamodule4;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
DataModule1.ZKategori.SQL.Clear;
DataModule1.ZKategori.SQL.Add('insert into kategori values(null, "'+edt1.Text+'")');
DataModule1.ZKategori.ExecSQL;

DataModule1.ZKategori.SQL.Clear;
DataModule1.ZKategori.SQL.Add('select * from kategori');
DataModule1.ZKategori.Open;
ShowMessage ('Data Berhasil disimpan!');
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
  DataModule1.Zkategori.SQL.Clear;
  DataModule1.Zkategori.SQL.Add('update kategori set name="'+edt1.Text+'" where id= '+a);
  DataModule1.Zkategori.ExecSQL;

  DataModule1.Zkategori.SQL.Clear;
  DataModule1.Zkategori.SQL.Add('select * from kategori');
  DataModule1.Zkategori.Open;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
DataModule1.ZKategori.SQL.Clear;
DataModule1.ZKategori.SQL.Add('delete * from kategori where id='+a);
DataModule1.ZKategori.ExecSQL;

DataModule1.ZKategori.SQL.Clear;
DataModule1.ZKategori.SQL.Add('select * from kategori');
DataModule1.ZKategori.Open;
ShowMessage ('Data Berhasil didelete!');
end;


procedure TForm3.NCellClick(Column: TColumn);
begin
edt1.Text:= DataModule1.ZKategori.Fields[1].AsString;
a:=DataModule1.ZKategori.Fields[0].AsString
end;

end.
