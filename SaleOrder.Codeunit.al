codeunit 50206 "Sales Order "
{
    Subtype = Test;
    trigger OnRun()
    begin
        // [FEATURE] Sales Order  Warehouse Shipment Pick 
    end;

    [Test]
    procedure SalesOrderAndWarehouseShipment()
    var
        Customer: Record Customer;
        Item: Record Item;

    begin
        // [SCENARION] Create Sales Order and make Warehouse Shipment
        // [GIVEN] Sales Order
        CreateSalesOrder(Customer, Item);
        //[WHEN] After creating sales order

        //[THEN] Create Warehouse Shipment
        CreateWarehouseShipment();
        //[THEN] Create Warehouse Pick
        CreateWarehousePick();
        //[THEN] Register Pick
        RegisterPick();

    end;

    procedure CreateSalesOrder(var customer: Record Customer; var item: Record Item)
    var
        SalesHead: Record "Sales Header";
        SalesLine: Record "Sales Line";
    begin
        SalesHead.Reset();
        if not SalesHead.Get() then begin
            SalesHead.Init();
            SalesHead.Insert();
        end;
        SalesLine.Reset();
        if not SalesLine.Get() then begin
            SalesLine.Init();
            SalesLine.Insert();
        end;
    end;

    procedure CreateWarehouseShipment()
    begin

    end;

    procedure CreateWarehousePick()
    begin

    end;

    procedure RegisterPick()
    begin

    end;

}