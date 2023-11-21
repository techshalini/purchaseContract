using {shalu as pur } from '../db/schema';
 
service MyService {
 
    entity EKKO as projection on pur.EKKO;
    entity EKPO as projection on pur.EKPO;
    entity PurchaseOrders as projection on pur.PurchaseOrders
    entity PurchaseOrderItems as projection on pur.PurchaseOrderItems;
}