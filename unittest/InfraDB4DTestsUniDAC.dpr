program InfraDB4DTestsUniDAC;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}


uses
  DUnitTestRunner,
  InfraDB4D in '..\src\InfraDB4D.pas',
  InfraDB4D.Drivers.Base in '..\src\InfraDB4D.Drivers.Base.pas',
  InfraDB4D.Drivers.UniDAC in '..\src\InfraDB4D.Drivers.UniDAC.pas',
  InfraDB4D.UnitTest.UniDAC.DataModule in 'InfraDB4D.UnitTest.UniDAC.DataModule.pas' {UniDACDataModule: TDataModule},
  InfraDB4D.UnitTest.UniDAC in 'InfraDB4D.UnitTest.UniDAC.pas';

{$R *.RES}


begin

  ReportMemoryLeaksOnShutdown := True;

  DUnitTestRunner.RunRegisteredTests;

end.
