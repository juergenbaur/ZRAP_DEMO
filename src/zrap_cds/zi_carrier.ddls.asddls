@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Read-Only E2E: Data Model Carrier'
@Search.searchable: true
define view entity ZI_Carrier
  as select from /dmo/carrier as Airline
{
       @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
  key Airline.carrier_id    as AirlineID,
        @Semantics.text: true
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      Airline.name          as Name,
       
      Airline.currency_code as CurrencyCode
}
