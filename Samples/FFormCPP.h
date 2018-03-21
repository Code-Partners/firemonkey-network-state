//---------------------------------------------------------------------------

#ifndef FFormCPPH
#define FFormCPPH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Forms.hpp>
#include <FMX.Controls.Presentation.hpp>
#include <FMX.Layouts.hpp>
#include <FMX.Memo.hpp>
#include <FMX.ScrollBox.hpp>
#include <FMX.StdCtrls.hpp>
#include <FMX.Types.hpp>

#include "UNetworkState.hpp"
//---------------------------------------------------------------------------
class TFormSample : public TForm
{
__published:	// IDE-managed Components
	TLayout *Layout1;
	TButton *Button1;
	TMemo *Memo1;
	void __fastcall Button1Click(TObject *Sender);
private:	// User declarations
    TNetworkState *FNetworkState;

protected:
	void __fastcall DoOnNetworkStateChanged(TObject* Sender, TNetworkStateValue Value);

public:		// User declarations
	__fastcall TFormSample(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormSample *FormSample;
//---------------------------------------------------------------------------
#endif
