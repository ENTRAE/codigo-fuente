unit uacercaDe;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  LCLintf;

type

  { TacercaDe }

  TacercaDe = class(TForm)
    cerrar: TButton;
    img1: TImage;
    Label1: TLabel;
    web: TLabel;
    procedure cerrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure img1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure webClick(Sender: TObject);
  private

  public

  end;

var
  acercaDe: TacercaDe;

implementation

{$R *.lfm}

{ TacercaDe }

procedure TacercaDe.FormCreate(Sender: TObject);
begin

end;

procedure TacercaDe.img1Click(Sender: TObject);
begin

end;

procedure TacercaDe.cerrarClick(Sender: TObject);
begin
  close();
end;

procedure TacercaDe.Label1Click(Sender: TObject);
begin

end;

procedure TacercaDe.webClick(Sender: TObject);
begin
  OpenURL('http://joseluisesteban.ddns.net');
end;

end.

