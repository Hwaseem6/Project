pageextension 50202 "CustomerCardPageExt" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Lookup Value Code"; Rec."Lookup Value Code")
            {

            }
        }
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}