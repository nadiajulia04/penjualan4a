unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm9 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    lb1: TLabel;
    edt2: TEdit;
    btn4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  a: string;
implementation

uses datamodule4;

{$R *.dfm}

procedure TForm9.btn1Click(Sender: TObject);
begin
DataModule1.ZKustomer.SQL.Clear;
DataModule1.ZKustomer.SQL.Add('insert into kustomer values(null, "'+edt1.Text+'")');
DataModule1.ZKustomer.ExecSQL;

DataModule1.ZKustomer.SQL.Clear;
DataModule1.ZKustomer.SQL.Add('select * from kustomer');
DataModule1.ZKustomer.Open;
ShowMessage ('Data Berhasil disimpan!');
end;

procedure TForm9.btn2Click(Sender: TObject);
begin
  DataModule1.ZKustomer.SQL.Clear;
  DataModule1.ZKustomer.SQL.Add('update kustomer set name="'+edt1.Text+'" where id= '+a);
  DataModule1.ZKustomer.ExecSQL;

  DataModule1.ZKustomer.SQL.Clear;
  DataModule1.ZKustomer.SQL.Add('select * from kustomer');
  DataModule1.ZKustomer.Open;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm9.btn3Click(Sender: TObject);
begin
DataModule1.ZKustomer.SQL.Clear;
DataModule1.ZKustomer.SQL.Add('delete * from kustomer where id='+a);
DataModule1.ZKustomer.ExecSQL;

DataModule1.ZKustomer.SQL.Clear;
DataModule1.ZKustomer.SQL.Add('select * from kjustomer');
DataModule1.ZKustomer.Open;
ShowMessage ('Data Berhasil didelete!');
end;

end.
