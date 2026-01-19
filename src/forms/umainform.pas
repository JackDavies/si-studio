unit uMainForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ExtCtrls,
  SynEdit, SynHighlighterAny, SynCompletion, uModuleFrame;

type

  { TMainForm }

  TMainForm = class(TForm)
    MainMenu: TMainMenu;
    MainFileMenu: TMenuItem;
    MenuItem1: TMenuItem;
    MenuFrameTest: TMenuItem;
    TopPanel: TPanel;
    BottomPanel: TPanel;
    LeftPanel: TPanel;
    RightPanel: TPanel;
    CenterPanel: TPanel;
    procedure MenuFrameTestClick(Sender: TObject);
  private

  public

  end;

var
  MainForm: TMainForm;

implementation

{$R *.lfm}

{ TMainForm }

{$REGION 'Event Handlers'}

procedure TMainForm.MenuFrameTestClick(Sender: TObject);
var
  module : TModuleFrame;
begin
  module := TModuleFrame.Create(self);
  module.Align := alClient;
  module.Parent := CenterPanel;
end;

{$ENDREGION}

end.

