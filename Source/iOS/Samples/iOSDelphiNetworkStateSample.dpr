program iOSDelphiNetworkStateSample;

uses
  System.StartUpCopy,
  FMX.Forms,
  UNetworkState in '..\..\UNetworkState.pas',
  FForm in '..\..\Android\Samples\FForm.pas' {FormSample},
  CaptiveNetwork in '..\CaptiveNetwork.pas',
  SCNetworkReachability in '..\SCNetworkReachability.pas',
  UNetworkState.iOS in '..\UNetworkState.iOS.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormSample, FormSample);
  Application.Run;
end.
