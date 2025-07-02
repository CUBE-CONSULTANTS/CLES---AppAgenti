using {sap.capire.cles as my} from '../db/schema';
using {salesorder} from './external/salesorder';

service MainService {
  entity Variants        as projection on my.Variants;
  entity VariantsFilters as projection on my.VariantsFilters;

// @cds.persistence.skip
// entity CustomerOrderCollection as projection on salesorder.CustomerOrderCollection;
}
