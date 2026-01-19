unit uModuleFrame;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, ExtCtrls, ComCtrls, SynEdit, uEditorFrame;

type

  { TModuleFrame }

  TModuleFrame = class(TFrame)
    BottomPanel: TPanel;
    CenterPanel: TPanel;
    ModulePanel: TPanel;
    SynEdit2: TSynEdit;
    TestModulePanel: TPanel;
    EdittorsSplitter: TSplitter;
    BottomSplitter: TSplitter;
    TabSheet1: TTabSheet;
    TestFilesPageControl: TPageControl;
    ToolBar3: TToolBar;
    TopPanel: TPanel;

  private
    _moduleEditFrame : TEditorFrame;
  public
    constructor Create(AOwner : TComponent); override;
  end;

implementation

{$R *.lfm}

{ TModuleFrame }

{$REGION 'Constructors'}

constructor TModuleFrame.Create(AOwner : TComponent);
begin
  inherited;
  _moduleEditFrame := TEditorFrame.Create(self);
  _moduleEditFrame.Parent := ModulePanel;
  ModulePanel.Width := ModulePanel.Parent.Width div 2;
end;

{$ENDREGION}

end.

