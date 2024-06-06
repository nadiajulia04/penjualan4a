unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm6 = class(TForm)
    NAMA: TLabel;
    ld1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    N: TDBGrid;
    edt2: TEdit;
    btn4: TButton;
    btn2: TButton;
    btn3: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  a:string;
  
implementation

uses datamodule4;

{$R *.dfm}

procedure TForm6.btn1Click(Sender: TObject);
begin
DataModule1.ZKustomer.SQL.Clear;
DataModule1.ZKustomer.SQL.Add('delete from kustomer where id= "'+a+'"');
DataModule1.ZKustomer.ExecSQL;

DataModule1.ZKustomer.SQL.Clear;
DataModule1.ZKustomer.SQL.Add('select * from kustomer');
DataModule1.ZKustomer.Open;
ShowMessage ('Data Berhasil Disimpan!');
end;

end.














