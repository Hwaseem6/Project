codeunit 50205 MyFourthTestCodeunit
{
    Subtype = Test;
    [Test]
    procedure MyFirstTestPageFunction()
    var
        PaymentTerms: TestPage "Payment Terms";
    begin
        PaymentTerms.OpenView();
        PaymentTerms.Last();
        PaymentTerms.Code.AssertEquals('COD');
        PaymentTerms.Close();
    end;

    [Test]
    procedure MySecondTestPageFunction()
    var
        PaymentTerms: TestPage "Payment Terms";
    begin
        PaymentTerms.OpenView();
        PaymentTerms.Code.SetValue('COD');
        PaymentTerms."Discount %".SetValue('56');
        PaymentTerms.Description.SetValue(PaymentTerms.Code.Value);
        Error('Code: %1 \ Discount %: %2 \Description: %3', PaymentTerms.Code.Value(),
        PaymentTerms."Discount %".Value(), PaymentTerms.Description.Value());
        PaymentTerms.Close();
    end;

    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;
}