program GenerarDatos;

uses
  Vcl.Forms,
  DataGenerator in '..\Utileria Delphi\DataGenerator.pas',
  UFRPrincipal in 'UFRPrincipal.pas' {FRPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRPrincipal, FRPrincipal);
  Application.Run;
end.
