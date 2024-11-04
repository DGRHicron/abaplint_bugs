@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'FI Position'
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_FIPosition
  as select from I_JournalEntryItem
    inner join   I_Ledger as _Ledger on  _Ledger.IsLeadingLedger = 'X'
                                     and _Ledger.Ledger          = I_JournalEntryItem.Ledger
  {
    key I_JournalEntryItem.SourceLedger,
    key I_JournalEntryItem.CompanyCode,
    key I_JournalEntryItem.FiscalYear,
    key I_JournalEntryItem.AccountingDocument,
    key I_JournalEntryItem.LedgerGLLineItem,
    key I_JournalEntryItem.Ledger,
        I_JournalEntryItem.LedgerFiscalYear,
        I_JournalEntryItem.ChartOfAccounts,
        I_JournalEntryItem.ControllingArea,
        I_JournalEntryItem.BusinessTransactionType,
        I_JournalEntryItem.ControllingBusTransacType,
        I_JournalEntryItem.ReferenceDocumentType,
        I_JournalEntryItem.ReferenceDocumentContext,
        I_JournalEntryItem.ReferenceDocument,
        I_JournalEntryItem.ReferenceDocumentItem,
        I_JournalEntryItem.ReferenceDocumentItemGroup,
        I_JournalEntryItem.IsReversal,
        I_JournalEntryItem.IsReversed,
        I_JournalEntryItem.ReversalReferenceDocumentCntxt,
        I_JournalEntryItem.ReversalReferenceDocument,
        I_JournalEntryItem.GLAccount,
        I_JournalEntryItem._GLAccountTxt[ 1: Language = $session.system_language ].GLAccountName,
        I_JournalEntryItem._GLAccountTxt[ 1: Language = $session.system_language ].GLAccountLongName,
        I_JournalEntryItem.CostCenter,
        I_JournalEntryItem.ProfitCenter,
        I_JournalEntryItem.FunctionalArea,
        I_JournalEntryItem.BusinessArea,
        I_JournalEntryItem.Segment,
        I_JournalEntryItem.BalanceTransactionCurrency,
        @Semantics.amount.currencyCode: 'BalanceTransactionCurrency'
        I_JournalEntryItem.AmountInBalanceTransacCrcy,
        I_JournalEntryItem.TransactionCurrency,
        @Semantics.amount.currencyCode: 'TransactionCurrency'
        I_JournalEntryItem.AmountInTransactionCurrency,
        I_JournalEntryItem.CompanyCodeCurrency,
        @Semantics.amount.currencyCode: 'CompanyCodeCurrency'
        I_JournalEntryItem.AmountInCompanyCodeCurrency,
        I_JournalEntryItem.GlobalCurrency,
        @Semantics.amount.currencyCode: 'GlobalCurrency'
        I_JournalEntryItem.AmountInGlobalCurrency,
        I_JournalEntryItem.CostSourceUnit,
        @Semantics.quantity.unitOfMeasure: 'CostSourceUnit'
        I_JournalEntryItem.ValuationQuantity,
        @Semantics.quantity.unitOfMeasure: 'CostSourceUnit'
        I_JournalEntryItem.ValuationFixedQuantity,
        I_JournalEntryItem.ReferenceQuantityUnit,
        @Semantics.quantity.unitOfMeasure: 'ReferenceQuantityUnit'
        I_JournalEntryItem.ReferenceQuantity,
        I_JournalEntryItem.DebitCreditCode,
        I_JournalEntryItem.FiscalPeriod,
        I_JournalEntryItem.FiscalYearVariant,
        I_JournalEntryItem.FiscalYearPeriod,
        I_JournalEntryItem.PostingDate,
        I_JournalEntryItem.DocumentDate,
        I_JournalEntryItem.AccountingDocumentType,
        I_JournalEntryItem.AccountingDocumentItem,
        I_JournalEntryItem.AssignmentReference,
        I_JournalEntryItem.AccountingDocumentCategory,
        I_JournalEntryItem.PostingKey,
        I_JournalEntryItem.TransactionTypeDetermination,
        I_JournalEntryItem.AlternativeGLAccount,
        I_JournalEntryItem.CountryChartOfAccounts,
        I_JournalEntryItem.InvoiceReference,
        I_JournalEntryItem.InvoiceReferenceFiscalYear,
        I_JournalEntryItem.FollowOnDocumentType,
        I_JournalEntryItem.InvoiceItemReference,
        I_JournalEntryItem.ReferencePurchaseOrderCategory,
        I_JournalEntryItem.DocumentItemText,
        I_JournalEntryItem.SalesOrder,
        I_JournalEntryItem.SalesOrderItem,
        I_JournalEntryItem.SalesDocument,
        I_JournalEntryItem.SalesDocumentItem,
        I_JournalEntryItem.Material,
        I_JournalEntryItem.Product,
        I_JournalEntryItem.Plant,
        I_JournalEntryItem.Supplier,
        I_JournalEntryItem.Customer,
        I_JournalEntryItem.ServicesRenderedDate,
        I_JournalEntryItem.PerformancePeriodStartDate,
        I_JournalEntryItem.PerformancePeriodEndDate,
        I_JournalEntryItem.ConditionContract,
        I_JournalEntryItem.FinancialAccountType,
        I_JournalEntryItem.SpecialGLCode,
        I_JournalEntryItem.TaxCode,
        I_JournalEntryItem.TaxCountry,
        I_JournalEntryItem.HouseBank,
        I_JournalEntryItem.HouseBankAccount,
        I_JournalEntryItem.ClearingDate,
        I_JournalEntryItem.ClearingAccountingDocument,
        I_JournalEntryItem.ClearingDocFiscalYear,
        I_JournalEntryItem.WBSElement,
        I_JournalEntryItem.Project,
        I_JournalEntryItem.OperatingConcern,
        I_JournalEntryItem.BillingDocumentType,
        I_JournalEntryItem.SalesOrganization,
        I_JournalEntryItem.DistributionChannel,
        I_JournalEntryItem.OrganizationDivision,

        I_JournalEntryItem.NetDueDate,
        @Semantics.amount.currencyCode: 'CompanyCodeCurrency'
        I_JournalEntryItem.DebitAmountInCoCodeCrcy,
        @Semantics.amount.currencyCode: 'CompanyCodeCurrency'
        I_JournalEntryItem.CreditAmountInCoCodeCrcy,
        @Semantics.amount.currencyCode: 'TransactionCurrency'
        I_JournalEntryItem.DebitAmountInTransCrcy,
        @Semantics.amount.currencyCode: 'TransactionCurrency'
        I_JournalEntryItem.CreditAmountInTransCrcy,
        @Semantics.amount.currencyCode: 'BalanceTransactionCurrency'
        I_JournalEntryItem.DebitAmountInBalanceTransCrcy,
        @Semantics.amount.currencyCode: 'BalanceTransactionCurrency'
        I_JournalEntryItem.CreditAmountInBalanceTransCrcy,
        @Semantics.amount.currencyCode: 'GlobalCurrency'
        I_JournalEntryItem.DebitAmountInGlobalCrcy,
        @Semantics.amount.currencyCode: 'GlobalCurrency'
        I_JournalEntryItem.CreditAmountInGlobalCrcy,
        I_JournalEntryItem._JournalEntry.TaxReportingDate,
        I_JournalEntryItem._SalesDocument.SalesDocumentDate
  }
