unit uEditorFrame;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, ComCtrls, SynEdit;

type

  { TEditorFrame }

  TEditorFrame = class(TFrame)
    Editor: TSynEdit;
    ToolBar: TToolBar;
    RedoButton: TToolButton;
    UndoButton: TToolButton;
    procedure RedoButtonClick(Sender: TObject);
    procedure UndoButtonClick(Sender: TObject);
  private

  public

  end;

implementation

{$R *.lfm}

{ TEditorFrame }

{$REGION 'Event Handlers'}

procedure TEditorFrame.UndoButtonClick(Sender: TObject);
begin
  Editor.Undo;
end;

procedure TEditorFrame.RedoButtonClick(Sender: TObject);
begin
  Editor.Redo;
end;

{$ENDREGION}

end.

