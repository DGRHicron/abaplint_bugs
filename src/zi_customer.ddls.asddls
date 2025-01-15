@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'S4 Customer'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_Customer
  as select from I_Customer
  association [1..*] to ZI_CustomerCompany   as _CustomerCompany   on $projection.Customer = _CustomerCompany.Customer
  association [1..*] to ZI_CustomerSalesArea as _CustomerSalesArea on $projection.Customer = _CustomerSalesArea.Customer
  {
    key Customer,
        Country,
        CustomerName,
        CustomerFullName,
        VATRegistration,
        TaxNumber1,
        TaxNumber2,
        TaxNumber3,
        TaxNumber4,
        TaxNumber5,
        TaxNumber6,
        AddressID,
        TradingPartner,
        IsOneTimeAccount,
        CityName,
        PostalCode,
        StreetName,
        TelephoneNumber1,
        TelephoneNumber2,

        _StandardAddress.Person,
        _StandardAddress.CareOfName,
        _StandardAddress.AdditionalStreetSuffixName,
        _StandardAddress.FullName,
        _StandardAddress.CityName   as AddrCityName,
        _StandardAddress.District,
        _StandardAddress.CityCode,
        _StandardAddress.HomeCityName,
        _StandardAddress.PostalCode as AddrPostalCode,
        _StandardAddress.CompanyPostalCode,
        _StandardAddress.StreetName as AddrStreetName,
        _StandardAddress.StreetPrefixName,
        _StandardAddress.AdditionalStreetPrefixName,
        _StandardAddress.StreetSuffixName,
        _StandardAddress.HouseNumber,
        _StandardAddress.HouseNumberSupplementText,
        _StandardAddress.Building,
        _StandardAddress.Floor,
        _StandardAddress.RoomNumber,
        _StandardAddress.Country    as AddrCountry,
        _StandardAddress.Region,
        _StandardAddress.PhoneNumber,
        _StandardAddress._DefaultEmailAddress.EmailAddress,

        /* Associations */
        _CustomerCompany,
        _CustomerSalesArea
  }
