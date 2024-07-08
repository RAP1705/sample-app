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
    
}