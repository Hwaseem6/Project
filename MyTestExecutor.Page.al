page 50206 MyTestExecutor
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'My Test Executor';

    // layout
    // {
    //     area(Content)
    //     {
    //         group(GroupName)
    //         {
    //             field(Name; NameSource)
    //             {
    //                 ApplicationArea = All;

    //             }
    //         }
    //     }
    // }

    actions
    {
        area(Processing)
        {
            action(MyFirstTestCodeunit)
            {
                ApplicationArea = All;
                Caption = 'My First Test Codeunit';
                ToolTip = 'Execute My Firts Test Codeunit';
                Image = ExecuteBatch;
                RunObject = codeunit MyFirstTest;
            }
            action(MySecondTestCodeunit)
            {
                ApplicationArea = All;
                Caption = 'My Second Test Codeunit';
                Image = ExecuteBatch;
                RunObject = codeunit MySecondTestCodeunit;
            }
            action(MyAssertTest)
            {
                ApplicationArea = All;
                Caption = 'Assert Error Test';
                Image = ExecuteBatch;
                RunObject = codeunit MyThirdTestCodeunit;
            }
            action(TestPages)
            {
                ApplicationArea = All;
                Caption = 'Test Page';
                Image = ExecuteBatch;
                RunObject = codeunit MyFourthTestCodeunit;
            }
        }
    }

    var
        myInt: Integer;
}