unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, ClipBrd;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Python1: TMenuItem;
    Django1: TMenuItem;
    ORM1: TMenuItem;
    Flask1: TMenuItem;
    Pyramid1: TMenuItem;
    emplates1: TMenuItem;
    Model1: TMenuItem;
    procedure Model1Click(Sender: TObject);
  private
    function copyPath(menuItem: TMenuItem; path: string): string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  System.SysUtils;

{$R *.dfm}

procedure TForm1.Model1Click(Sender: TObject);
var MenuItem: TMenuItem absolute sender;
begin
    Clipboard.AsText := copyPath(MenuItem, MenuItem.Caption);
    ShowMessage(Clipboard.AsText);
end;

function TForm1.copyPath(menuItem : TMenuItem; path : string) : string;
begin
  Result := StringReplace(path, '&', '', [rfReplaceAll]);
  if (menuItem.Parent is TMenuItem) and ( TMenuItem(menuItem.Parent).Caption <> '') then
    Result := copyPath(menuItem.Parent, TMenuItem(menuItem.Parent).Caption + ' -> ' + Result);
end;

end.
