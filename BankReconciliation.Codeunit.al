// codeunit 50206 MyBankReconciliation
// {     [Test]
// procedure VerifyDimSetIDOfCustLedgerEntryAfterPosting
// BankAccReconLine()
// var
// BankAccReconciliation: Record "Bank Acc. Reconciliation";
// BankAccReconciliationLine: Record "Bank Acc. Reconciliation Line";
// StatementAmount: Decimal;
// CustomerNo: Code[20];
// CustLedgerEntryNo: Integer;
// DimSetID: Integer;
// begin
//     // [FEATURE] [Customer]
//     // [SCENARIO] "Dimension set ID" of Cust. Ledger
// // Entry should be equal "Dimension Set ID" of
// // Bank Acc. Reconcilation Line after posting
// Initialize;
// //[GIVEN] Posted sales invoice for a customer
// CreateAndPostSalesInvoice(CustomerNo, CustLedgerEntryNo,
// StatementAmount);
// // [GIVEN] Default dimension for the customer
// CreateDefaultDimension(CustomerNo, DATABASE::Customer);
// // [GIVEN] Bank Acc. Reconcilation Line with
// // "Dimension Set ID" = "X" and
// // "Account No." = the customer
// CreateApplyBankAccReconcilationLine(
// BankAccReconciliation, BankAccReconciliationLine,
// BankAccReconciliationLine."Account Type"::Customer,
// CustomerNo, StatementAmount, LibraryERM.CreateBankAccountNo);
// DimSetID :=
// ApplyBankAccReconcilationLine(
// BankAccReconciliationLine,
// CustLedgerEntryNo,
// BankAccReconciliationLine."Account Type"::Customer, '');
// // [WHEN] Post Bank Acc. Reconcilation Line
// LibraryERM.PostBankAccReconciliation(BankAccReconciliation);
// // [THEN] "Cust. Ledger Entry"."Dimension Set ID" = "X"
// VerifyCustLedgerEntry(
// CustomerNo, BankAccReconciliation."Statement No.", DimSetID);

// end;

//     trigger OnRun()
//     begin

//     end;

//     var
//         myInt: Integer;
// }