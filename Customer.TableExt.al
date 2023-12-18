tableextension 50200 "MNB Customer" extends Customer
{
    fields
    {
        field(50200; "MNB Bonuses"; Integer)
        {
            Caption = 'Bonuses';
            FieldClass = FlowField;
            CalcFormula = count("MNB Bonus Header" where("Customer No." = field("No.")));
            Editable = false;
        }

    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;


    var
        BonusExistErr: Label 'You can not delete Customer %1 because there is at least one Bonus assigned';


    trigger OnBeforeDelete()
    var
        MNBBonusHeader: Record "MNB Bonus Header";
    begin
        MNBBonusHeader.SetRange("Customer No.", "No.");
        if not MNBBonusHeader.IsEmpty() then
            Error(BonusExistErr, "No.");
    end;
}