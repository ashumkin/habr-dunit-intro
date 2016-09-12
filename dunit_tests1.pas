unit dunit_tests1;

interface

uses
  TestFramework;

type
  TMyTestCase = class(TTestCase)
  protected
    FClassInstance: TObject;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestClassInitialization;
  end;

implementation

uses
  SysUtils;

{ TMyTestCase }

procedure TMyTestCase.SetUp;
begin
  inherited;
  FClassInstance := TObject.Create;
end;

procedure TMyTestCase.TearDown;
begin
  FreeAndNil(FClassInstance);
  inherited;
end;

procedure TMyTestCase.TestClassInitialization;
begin
  CheckNotNull(FClassInstance);
end;

initialization
  RegisterTest(TMyTestCase.Suite);
end.
