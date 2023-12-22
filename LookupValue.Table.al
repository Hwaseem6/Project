table 50206 "LookupValue"
{
    DataClassification = ToBeClassified;
    LookupPageId = "LookupValues";

    fields
    {
        field(1; Code; Code[10])
        {
            // DataClassification = ToBeClassified;

        }
        field(2; Description; Text[50])
        {

        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}