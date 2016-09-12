program dunit_intro;

{$IFDEF CONSOLE_TEST_RUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  TextTestRunner,
  GUITestRunner;

begin
  if IsConsole then
    TextTestRunner.RunRegisteredTests
  else
    GUITestRunner.RunRegisteredTests;
end.
