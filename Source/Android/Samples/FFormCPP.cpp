//---------------------------------------------------------------------------

#include <fmx.h>
#pragma hdrstop

#include "FFormCPP.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.fmx"
TFormSample *FormSample;
//---------------------------------------------------------------------------
__fastcall TFormSample::TFormSample(TComponent* Owner)
	: TForm(Owner)
{
	this->FNetworkState = TNetworkState::Factory(this, this->DoOnNetworkStateChanged);

	if (this->FNetworkState->CurrentValue == nsConnectedWifi) {
		this->Memo1->Lines->Add(L"On startup: Connected with WiFi");
	} else if (this->FNetworkState->CurrentValue == nsConnectedMobileData) {
		this->Memo1->Lines->Add(L"On startup: Connected with mobile data");
	} else {
		this->Memo1->Lines->Add(L"On startup: Disconnected");
	}
}

void __fastcall TFormSample::Button1Click(TObject *Sender)
{
	if (this->FNetworkState->CurrentValue == nsConnectedWifi) {
		this->Memo1->Lines->Add(L"Button1 Click: Connected with WiFi");
	} else if (this->FNetworkState->CurrentValue == nsConnectedMobileData) {
		this->Memo1->Lines->Add(L"Button1 Click: Connected with mobile data");
	} else {
		this->Memo1->Lines->Add(L"Button1 Click: Disconnected");
	}
}

void __fastcall TFormSample::DoOnNetworkStateChanged(TObject* Sender, TNetworkStateValue Value)
{
	if (this->FNetworkState->CurrentValue == nsConnectedWifi) {
		this->Memo1->Lines->Add(L"On change: Connected with WiFi");
	} else if (this->FNetworkState->CurrentValue == nsConnectedMobileData) {
		this->Memo1->Lines->Add(L"On change: Connected with mobile data");
	} else {
		this->Memo1->Lines->Add(L"On change: Disconnected");
	}
}
//---------------------------------------------------------------------------
