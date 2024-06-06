unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm5 = class(TForm)
    NAMA: TLabel;
    ld1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    N: TDBGrid;
    edt2: TEdit;
    btn4: TButton;
    procedure NCellClick(Column: TColumn);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  a:string;

implementation

uses datamodule4;

{$R *.dfm}

procedure TForm5.btn1Click(Sender: TObject);
begin
DataModule1.ZSupplier.SQL.Clear;
DataModule1.ZSupplier.SQL.Add('insert into supplier values(null, "'+edt1.Text+'")');
DataModule1.ZSupplier.ExecSQL;

DataModule1.ZSupplier.SQL.Clear;
DataModule1.ZSupplier.SQL.Add('select * from supplier');
DataModule1.ZSupplier.Open;
ShowMessage ('Data Berhasil disimpan!');
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
  DataModule1.ZSupplier.SQL.Clear;
  DataModule1.ZSupplier.SQL.Add('update supplier set name="'+edt1.Text+'" where id= '+a);
  DataModule1.ZSupplier.ExecSQL;

  DataModule1.ZSupplier.SQL.Clear;
  DataModule1.ZSupplier.SQL.Add('select * from supplier');
  DataModule1.ZSupplier.Open;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm5.NCellClick(Column: TColumn);
begin
   edt1.Text:= DataModule1.ZSupplier.Fields[1].AsString;
a:=DataModule1.ZSatuan.Fields[0].AsString
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
DataModule1.ZSupplier.SQL.Clear;
DataModule1.ZSupplier.SQL.Add('delete * from supplier where id='+a);
DataModule1.ZSupplier.ExecSQL;

DataModule1.ZSupplier.SQL.Clear;
DataModule1.ZSupplier.SQL.Add('select * from supplier');
DataModule1.ZSupplier.Open;
ShowMessage ('Data Berhasil didelete!');
end;

end.
