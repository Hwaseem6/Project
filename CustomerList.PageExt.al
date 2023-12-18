pageextension 50200 "MNB Customer List" extends "Customer List"
{
    layout
    {
        // Add changes to page layout here
        addlast(Control1)
        {
            field("MNB Bonuses"; Rec."MNB Bonuses")
            {
                ApplicationArea = all;
                ToolTip = 'Show number of assigned bonuses to customer';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
        addlast(navigation)
        {
            action("MNBBonuses")
            {
                Caption = 'Bonuses';
                ApplicationArea = All;
                Image = Discount;
                RunObject = page "MNB Bonus List";
                RunPageLink = "Customer No." = field("No.");


            }
        }
    }

    var
        myInt: Integer;
}