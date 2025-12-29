using {  managed} from '@sap/cds/common';
namespace rims;

entity Product : managed{
    key recordId : Integer;
    product_name : localized String(255);
    preferred_name : localized String(255);
    product_family : Association to ProductFamily;
    brand_name : localized String(255);
    route_of_administration : Association to RouteOfAdministration;
    product_substance : Association to ProductSubstance;
    remarks : localized String(2000)
}
entity ProductFamily : managed {
    key recordId : Integer;
    name : String(255);
    remarks : String(2000)
}
entity RouteOfAdministration : managed {
    key recordId : Integer;
    route_of_administration : localized String(255);
    remarks : String(2000)
}

entity ProductSubstance : managed{
    key recordId :Integer;
    role : localized String (255)  ;  
    remarks : String(2000)
}
