codeunit 50202 MySecondTestCodeunit
{
    Subtype = Test;

    [Test]
    procedure MyNegativeTestFunction()
    begin
        Error('MyNegativeTestFunction');
    end;

    [Test]
    procedure MyPositiveNegativeTestFunction()
    begin
        asserterror Error('MyPositiveNegativeTestFunction');
    end;



    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;
}