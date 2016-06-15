unit FormMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, iORM.DB.Components.MemTable, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TMainForm = class(TForm)
    MemTableMaster: TioMemTable;
    DBGrid1: TDBGrid;
    DataSourceMaster: TDataSource;
    MemTableDetail: TioMemTable;
    DataSourceDetail: TDataSource;
    DBGrid2: TDBGrid;
    MemTableMasterPERSONS_FIRST_NAME: TStringField;
    MemTableMasterPERSONS_ID: TIntegerField;
    MemTableMasterPERSONS_LAST_NAME: TStringField;
    MemTableDetailPHONES_PERSONID: TIntegerField;
    MemTableDetailPHONES_PHONETYPE: TStringField;
    MemTableDetailPHONES_PHONENUMBER: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

end.
