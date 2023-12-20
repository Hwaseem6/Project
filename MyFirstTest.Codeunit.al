codeunit 50201 MyFirstTest
{
    Subtype = Test;

    [Test]
    procedure MyFirstTestFunction()
    begin
        Message('My First Test Function');
    end;

    [Test]
    procedure MySecondTestFunction()
    begin
        Error('My second Test Function');
    end;








    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;
}