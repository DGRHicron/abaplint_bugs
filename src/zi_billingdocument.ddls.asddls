@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Billing Doc'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_BillingDocument
  as select from I_BillingDocument
  association [0..1] to I_PaymentTermsConditionsText as _PaymentTermsText on $projection.CustomerPaymentTerms = _PaymentTermsText.PaymentTerms
  {
    key BillingDocument
  }
