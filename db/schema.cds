using {
 
    managed,
 
    cuid,
 
    sap.common.CodeList as CodeList,
    Currency
 
} from '@sap/cds/common';
using {CE_PURCHASEORDER_0001 as external} from '../srv/external/CE_PURCHASEORDER_0001';
 
namespace shalu;
 entity EKKO{
    Comp_Code:String;
    Doc_Type:String;
    Vendor:String;
    Lang:String;
    Pur_Org:String;
    Pur_Group:String;
    Currency:Currency;
    Vper_start:String;
    Vper_end:String;
    PurchaseOrder:Association to  PurchaseOrders;
 }
 
 entity EKPO{
    key item_no:String;
    Material:String;
    Plant:String;
    Stge_Loc:String;
    Quantity:String;
    PO_Unit:String;
    Net_Price:String;
    order_un_iso:String;
    condition:String;
    PurchaseOrderItem :Association to  PurchaseOrders ;
 }
 
 view PurchaseOrders as
    select from external.PurchaseOrder {
        key PurchaseOrder as ID,
        CompanyCode,
        PurchasingDocumentOrigin,
        Supplier,
        Language,
        PurchasingOrganization,
        PurchasingGroup,
        DocumentCurrency,
        ValidityStartDate,
        ValidityEndDate
    };

    view PurchaseOrderItems as 
    select from external.PurchaseOrderItem{
      Material,
      Plant,
      StorageLocation,
      OrderQuantity,OrderPriceUnit,
      NetPriceAmount
    };
