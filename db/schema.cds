using {
  cuid,
  managed,
} from '@sap/cds/common';

namespace sap.capire.cles;

entity Variants : cuid, managed {
  _key            : String(36);
  title           : String(100);
  text            : String(500);
  favorite        : Boolean;
  author          : String(100);
  changeable      : Boolean;
  variantsFilters : Composition of many VariantsFilters
                      on variantsFilters.variant = $self;
}

// legare i filtri alle varianti?
entity VariantsFilters : cuid, managed {
  _key    : String(36);
  value   : String(100);
  variant : Association to Variants;
}
