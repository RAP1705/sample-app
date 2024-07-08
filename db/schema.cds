using {cuid} from '@sap/cds/common';

namespace myschema;

entity Books: cuid  {

//key ID : uuid;
title : String (40);
stock : Integer;

};

entity Authors : cuid {
   // key id : uuid;
    name: String;
    placeofbirth : String;
    
};

entity Orders : cuid {
    partner : String (10);
    items : composition of many OrderItems on items.parent = $self;

};

entity OrderItems  {
    key parent: association to Orders;
    key pos : Integer;
    quantity : Integer;
    
}