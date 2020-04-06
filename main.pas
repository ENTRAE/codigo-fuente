unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
  uacercaDe;

type

  { TVantanaEditor }

  TVantanaEditor = class(TForm)
    imagenes: TMemo;
    ImageList1: TImageList;
    MenuArchivo: TMenuItem;
    MenuEdicion: TMenuItem;
    MenuAcerca: TMenuItem;
    MenuAbrir: TMenuItem;
    MenuGuardar: TMenuItem;
    MenuSalir: TMenuItem;
    MenuCopiar: TMenuItem;
    MenuPegar: TMenuItem;
    MenuPrincipal: TMainMenu;
    ventanaGuardar: TSaveDialog;
    ventanaAbrir: TOpenDialog;
    procedure MenuAbrirClick(Sender: TObject);
    procedure MenuAcercaClick(Sender: TObject);
    procedure MenuCopiarClick(Sender: TObject);
    procedure MenuGuardarClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuPegarClick(Sender: TObject);
    procedure MenuSalirClick(Sender: TObject);
  private

  public

  end;

var
  VantanaEditor: TVantanaEditor;

implementation

{$R *.lfm}

{ TVantanaEditor }

procedure TVantanaEditor.MenuItem1Click(Sender: TObject);
begin

end;

procedure TVantanaEditor.MenuCopiarClick(Sender: TObject);
begin
   imagenes.CopyToClipboard;
end;

procedure TVantanaEditor.MenuGuardarClick(Sender: TObject);
begin
 if ventanaGuardar.Execute then
  imagenes.Lines.SaveToFile(ventanaGuardar.FileName);
end;

procedure TVantanaEditor.MenuAbrirClick(Sender: TObject);
begin
   if ventanaAbrir.Execute then
     imagenes.Lines.LoadFromFile(ventanaAbrir.FileName);

end;

procedure TVantanaEditor.MenuAcercaClick(Sender: TObject);
begin
  acercaDe.ShowModal;
end;

procedure TVantanaEditor.MenuItem2Click(Sender: TObject);
begin

end;

procedure TVantanaEditor.MenuPegarClick(Sender: TObject);
begin
  imagenes.PasteFromClipboard;
end;

procedure TVantanaEditor.MenuSalirClick(Sender: TObject);
begin
  close();
end;

end.

