page 50207 "LookupValues"
{
    PageType = List;
    // ApplicationArea = All;
    // UsageCategory = Administration;
    SourceTable = "LookupValue";

    layout
    {
        area(Content)
        {
            repeater(RepeaterControl)
            {
                field("Code"; Rec."Code")
                {
                    // ApplicationArea = All;

                }
                field("Description"; Rec."Description")
                {

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}