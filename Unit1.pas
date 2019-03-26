unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Bde.DBTables, BDETableTool;

type
  TForm1 = class(TForm)
    Table1: TTable;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
 var
    BDETableTool1: TBDETableTool;
  begin

    BDETableTool1 := TBDETableTool.Create(self);
  Try
    BDETableTool1.Table := Table1;
    Memo1.Lines.Clear;
    Memo1.Lines.Assign(BDETableTool1.SQL);
    finally
      if Assigned(BDETableTool1) then BDETableTool1.Free;
    end;
  end;

end.
