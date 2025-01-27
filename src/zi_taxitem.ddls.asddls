@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS for BSET'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_TaxItem
  as select from I_TaxItem
  {
    key CompanyCode,
    key AccountingDocument,
    key FiscalYear,
    key TaxItem,
        TaxCode,
        @Semantics.amount.currencyCode: 'CompanyCodeCurrency'
        cast( cast( cast( TaxRate as abap.dec( 11, 2 ) ) / 10  as abap.dec(11,2) ) as abap.curr( 23, 2 ) ) as TaxRate,
        GLAccount,
        TaxItemGroup,
        @Semantics.amount.currencyCode: 'CompanyCodeCurrency'
        TaxBaseAmountInCoCodeCrcy,
        @Semantics.amount.currencyCode: 'DocumentCurrency'
        TaxBaseAmountInTransCrcy,
        @Semantics.amount.currencyCode: 'CompanyCodeCurrency'
        TaxAmountInCoCodeCrcy,
        @Semantics.amount.currencyCode: 'DocumentCurrency'
        TaxAmount,
        TransactionTypeDetermination,
        @Semantics.amount.currencyCode: 'CountryCurrency'
        TaxBaseAmountInCountryCrcy,
        @Semantics.amount.currencyCode: 'CountryCurrency'
        TaxAmountInCountryCrcy,
        DebitCreditCode,
        CompanyCodeCurrency,
        DocumentCurrency,
        CountryCurrency
  }
