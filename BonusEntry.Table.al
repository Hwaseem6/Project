table 50203 "MNB Bonus Entry"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Entry No';
            Editable = false;

        }
        field(2; "Bonus No"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Bonus No';
            Editable = false;
            TableRelation = "MNB Bonus Header";
        }
        field(3; "Document No"; code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Document No';
            Editable = false;
            TableRelation = "Sales Invoice Header";
        }
        field(4; "Item No"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Item No';
            Editable = false;
            TableRelation = "Item";
        }
        field(5; "Posting Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Posting Date';
            Editable = false;
        }
        field(6; "Bonus Amount"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Bonus Amount';
            Editable = false;
        }
    }


    keys
    {
        key(PK; "Entry No")
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