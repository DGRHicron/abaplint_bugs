@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Address'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity ZI_ADDRESS
  as select from I_Address
  {
    key AddressID,
        Person,
        CareOfName,
        AdditionalStreetSuffixName,
        FullName,
        CityName,
        District,
        CityCode,
        HomeCityName,
        PostalCode,
        CompanyPostalCode,
        StreetName,
        StreetPrefixName,
        AdditionalStreetPrefixName,
        StreetSuffixName,
        HouseNumber,
        HouseNumberSupplementText,
        Building,
        Floor,
        RoomNumber,
        Country,
        Region,
        PhoneNumber,
        _DefaultCorpEmailAddress.EmailAddress,
        /* Associations */
        _CityCode,
        _Country,
        _DefaultCorpEmailAddress,
        _DefaultCorpFaxNumber,
        _DefaultCorpMobilePhoneNumber,
        _DefaultCorporatePhoneNumber,
        _DefaultCorpURLAddress,
        _DefaultEmailAddress,
        _DefaultFaxNumber,
        _DefaultMobilePhoneNumber,
        _DefaultPhoneNumber,
        _DefaultPrivateFaxNumber,
        _DefaultPrivatePhoneNumber,
        _DefaultPvtEmailAddress,
        _DefaultPvtMobilePhoneNumber,
        _DefaultPvtURLAddress,
        _DefaultURLAddress

  }
