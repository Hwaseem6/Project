// codeunit 50203 "Test runner - Isol. Codeunit"
// {
//     Subtype = TestRunner;
//     TestIsolation = Codeunit;
//     TableNo = "Test Method Line";
//     Permissions =
//     tabledata "Al Test Suite" = rmid,
//     tabledata "Test Method Line" = rmid;

//     trigger OnRun()
//     begin
//         ALTestSuite.Get(Rec."Test Suite");
//         CurrentTestMethodLine.Copy(Rec);
//         TestRunnerMgt.RunTests(Rec);
//     end;

//     var
//         AlTestSuite: Record "AL Test Suite";
//         CurrentTestMethodLine: Record "Test Method Line";
//         TestRunnerMgt: Codeunit "Test Runner - Mgt";

//     trigger OnBeforeTestRun(CodeunitId: Integer;
//     CodeunitName: Text; FunctionName: Text;
//     FunctionTestPermissions: TestPermissions): Boolean
//     begin
//         exit(
//         TestRunnerMgt.PlatformBeforeTestRun(
//         CodeunitId,
//         CopyStr(CodeunitName, 1, 30),
//         CopyStr(FunctionName, 1, 128),
//         FunctionTestPermissions,
//         ALTestSuite.Name,
//         CurrentTestMethodLine.GetFilter("Line No."))
//         );
//     end;

//     trigger OnAfterTestRun(CodeunitId: Integer;
//     CodeunitName: Text; FunctionName: Text;
//     FunctionTestPermissions: TestPermissions;
//     IsSuccess: Boolean)
//     begin
//         TestRunnerMgt.PlatformAfterTestRun(
//         CodeunitId, CopyStr(CodeunitName, 1, 30),
//         CopyStr(FunctionName, 1, 128),
//         FunctionTestPermissions,
//         IsSuccess, ALTestSuite.Name,
//         CurrentTestMethodLine.GetFilter("Line No.")
//         );
//     end;
// }