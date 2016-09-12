program dunit_intro;

{$IFDEF CONSOLE_TEST_RUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  TestFramework,
  TextTestRunner,
  GUITestRunner,
  dunit_tests1;

begin
  if IsConsole then
    TextTestRunner.RunRegisteredTests(rxbHaltOnFailures)
  else
    GUITestRunner.RunRegisteredTests;
end.
