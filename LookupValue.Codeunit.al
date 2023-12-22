// codeunit 50203 "LookupValue UT Customer"
// {
//     Subtype = Test;
//     var
//     // LibraryUtility: Codeunit "Library - Utility";
//     trigger OnRun()
//     begin
//         //[FEATURE] LookupValue UT Customer
//     end;

//     [Test]
//     procedure AssignLookupValueToCustomer()
//     begin
//         // [SCENARIO #0001] Assign lookup value to customer
//         //[GIVEN] Lookup value
//         CreateLookupValueCode();
//         //[GIVEN] Customer
//         CreateCustomer();
//         //[WHEN] Set lookup value on customer
//         SetLookupValueOnCustomer();
//         //[THEN] Customer has lookup value code field populated
//         VerifyLookupValueOnCustomer();
//     end;

//     local procedure CreateLookupValueCode() : Code[10]
//     var
//         LookupValue: Record LookupValue;
//         begin
//             LookupValue.Init();
//             LookupValue.Validate(Code, LibraryUtility.GenerateRandomCode(
//                 LookupValue.FieldNo(Code),
//                 Database::LookupValue
//             ));
//             LookupValue.Validate(Description, LookupValue.Code);
//             LookupValue.Insert();
//             exit(LookupValue.Code);
//         end;

//         local procedure CreateCustomer(var Customer: Record Customer)
//         begin
//             LibrarySales.CreateCustomer(Customer);
//         end;


// }