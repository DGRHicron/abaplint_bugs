@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Header'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_Header
  as select from I_JournalEntry
  association [0..1] to ZI_BillingDocument as _BillingDocument on  $projection.ReferenceDocumentType     = 'VBRK'
                                                               and $projection.OriginalReferenceDocument = _BillingDocument.BillingDocument
  {
    key CompanyCode,
    key FiscalYear,
    key AccountingDocument,
        OriginalReferenceDocument,
        _BillingDocument.BillingDocument,
        _JournalEntryItem

  }
