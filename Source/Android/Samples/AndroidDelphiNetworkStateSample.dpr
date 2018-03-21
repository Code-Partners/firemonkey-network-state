program AndroidDelphiNetworkStateSample;

uses
  System.StartUpCopy,
  FMX.Forms,
  FForm in 'FForm.pas' {FormSample},
  UBroadcastReceiver in '..\BroadcastReceiver\UBroadcastReceiver.pas',
  UNetworkStateBroadcastReceiver in '..\BroadcastReceiver\UNetworkStateBroadcastReceiver.pas',
  UNetworkState.Android in '..\UNetworkState.Android.pas',
  UNetworkState in '..\..\UNetworkState.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormSample, FormSample);
  Application.Run;
end.
