unit FForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo, UNetworkState;

type
  TFormSample = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Layout1: TLayout;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FNetworkState: TNetworkState;
  protected
    procedure DoOnChange(Sender: TObject; Value: TNetworkStateValue);
  public

  end;

var
  FormSample: TFormSample;

implementation

{$R *.fmx}

procedure TFormSample.FormCreate(Sender: TObject);
begin
  self.FNetworkState := TNetworkState.Factory(self, DoOnChange);

  if self.FNetworkState.CurrentValue = nsConnectedWifi then
    self.Memo1.Lines.Add('On startup: Connected with WiFi')
  else if self.FNetworkState.CurrentValue = nsConnectedMobileData then
    self.Memo1.Lines.Add('On startup: Connected with mobile data')
  else if self.FNetworkState.CurrentValue = nsDisconnected then
    self.Memo1.Lines.Add('On startup: Disconnected')
  else
    self.Memo1.Lines.Add('On startup: Unknown');
end;

procedure TFormSample.DoOnChange(Sender: TObject; Value: TNetworkStateValue);
begin
  if Value = nsConnectedWifi then
    self.Memo1.Lines.Add('On change: Connected with WiFi')
  else if Value = nsConnectedMobileData then
    self.Memo1.Lines.Add('On change: Connected with mobile data')
  else if self.FNetworkState.CurrentValue = nsDisconnected then
    self.Memo1.Lines.Add('On change: Disconnected')
  else
    self.Memo1.Lines.Add('On change: Unknown');
end;

procedure TFormSample.Button1Click(Sender: TObject);
begin
  if self.FNetworkState.CurrentValue = nsConnectedWifi then
    self.Memo1.Lines.Add('Button1 Click: Connected with WiFi')
  else if self.FNetworkState.CurrentValue = nsConnectedMobileData then
    self.Memo1.Lines.Add('Button1 Click: Connected with mobile data')
  else if self.FNetworkState.CurrentValue = nsDisconnected then
    self.Memo1.Lines.Add('Button1 Click: Disconnected')
  else
    self.Memo1.Lines.Add('Button1 Click: Unknown');
end;

end.
