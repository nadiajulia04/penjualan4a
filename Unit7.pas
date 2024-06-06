unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm7 = class(TForm)
    NAMA: TLabel;
    ld1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    N: TDBGrid;
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
  Form7: TForm7;

implementation

uses datamodule4;

{$R *.dfm}

procedure TForm7.btn1Click(Sender: TObject);
begin
DataModule1.ZUser.SQL.Clear;
DataModule1.ZUser.SQL.Add('insert into user values(null, "'+edt1.Text+'")');
DataModule1.ZUser.ExecSQL;

DataModule1.ZUser.SQL.Clear;
DataModule1.ZUser.SQL.Add('select * from user');
DataModule1.ZUser.Open;
ShowMessage ('Data Berhasil disimpan!');
end;

procedure TForm7.btn2Click(Sender: TObject);
begin
  DataModule1.ZUser.SQL.Clear;
  DataModule1.ZUser.SQL.Add('update user set name="'+edt1.Text+'" where id= '+a);
  DataModule1.ZUser.ExecSQL;

  DataModule1.ZUser.SQL.Clear;
  DataModule1.ZUser.SQL.Add('select * from user');
  DataModule1.ZUser.Open;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm7.btn3Click(Sender: TObject);
begin
DataModule1.ZUser.SQL.Clear;
DataModule1.ZUser.SQL.Add('delete * from user where id='+a);
DataModule1.ZUser.ExecSQL;

DataModule1.ZUser.SQL.Clear;
DataModule1.ZUser.Add('select * from user');
DataModule1.ZUser.Open;
ShowMessage ('Data Berhasil didelete!');
end;

end.
