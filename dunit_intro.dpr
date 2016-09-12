program dunit_intro;

{$IFDEF CONSOLE_TEST_RUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  TextTestRunner,
  GUITestRunner,
  dunit_tests1;

begin
  if IsConsole then
    TextTestRunner.RunRegisteredTests
  else
    GUITestRunner.RunRegisteredTests;
end.
