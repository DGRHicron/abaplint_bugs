@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'S4 FI Position'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_FIPositionBseg
  as select from I_OperationalAcctgDocItem
  {
    key CompanyCode,
    key AccountingDocument,
    key FiscalYear,
    key AccountingDocumentItem,
        ChartOfAccounts,
        AccountingDocumentItemType,
        ClearingDate,
        ClearingCreationDate,
        ClearingAccountingDocument,
        PostingKey,
        FinancialAccountType,
        SpecialGLCode,
        SpecialGLTransactionType,
        DebitCreditCode,
        BusinessArea,
        PartnerBusinessArea,
        TaxCode,
        TaxCountry,
        WithholdingTaxCode,
        TaxType,
        TaxItemGroup,
        TransactionTypeDetermination,
        ValueDate,
        AssignmentReference,
        DocumentItemText,
        PartnerCompany,
        FinancialTransactionType,
        CorporateGroupAccount,
        PlanningLevel,
        ControllingArea,
        CostCenter,
        Project,
        OrderID,
        BillingDocument,
        SalesDocument,
        SalesDocumentItem,
        ScheduleLine,
        ServiceDocumentType,
        ServiceDocument,
        ServiceDocumentItem,
        MasterFixedAsset,
        FixedAsset,
        AssetTransactionType,
        AssetValueDate,
        PersonnelNumber,
        IsSalesRelated,
        LineItemDisplayIsEnabled,
        IsOpenItemManaged,
        AddressAndBankIsSetManually,
        DownPaymentIsNetProcedure,
        IsNotCashDiscountLiable,
        IsAutomaticallyCreated,
        IsUsedInPaymentTransaction,
        OperationalGLAccount,
        GLAccount,
        Customer,
        Supplier,
        BranchAccount,
        IsBalanceSheetAccount,
        ProfitLossAccountType,
        SpecialGLAccountAssignment,
        DueCalculationBaseDate,
        PaymentTerms,
        CashDiscount1Days,
        CashDiscount2Days,
        NetPaymentDays,
        CashDiscount1Percent,
        CashDiscount2Percent,
        PaymentMethod,
        PaymentBlockingReason,
        FixedCashDiscount,
        HouseBank,
        BPBankAccountInternalID,
        TaxDistributionCode1,
        TaxDistributionCode2,
        TaxDistributionCode3,
        InvoiceReference,
        InvoiceReferenceFiscalYear,
        InvoiceItemReference,
        FollowOnDocumentType,
        StateCentralBankPaymentReason,
        SupplyingCountry,
        InvoiceList,
        BillOfExchangeUsage,
        DunningKey,
        DunningBlockingReason,
        LastDunningDate,
        DunningLevel,
        DunningArea,
        WithholdingTaxCertificate,
        Material,
        Product,
        Plant,
        PurchasingDocument,
        PurchasingDocumentItem,
        AccountAssignmentNumber,
        IsCompletelyDelivered,
        MaterialPriceControl,
        ValuationArea,
        InventoryValuationType,
        VATRegistration,
        DelivOfGoodsDestCountry,
        PaymentDifferenceReason,
        ProfitCenter,
        JointVenture,
        JointVentureCostRecoveryCode,
        JointVentureEquityGroup,
        TreasuryContractType,
        AssetContract,
        CashFlowType,
        TaxJurisdiction,
        RealEstateObject,
        SettlementReferenceDate,
        CommitmentItem,
        CommitmentItemShortID,
        CostObject,
        ProjectNetwork,
        OrderInternalBillOfOperations,
        OrderIntBillOfOperationsItem,
        WBSElementInternalID,
        ProfitabilitySegment,
        JointVentureEquityType,
        IsEUTriangularDeal,
        CostOriginGroup,
        CompanyCodeCurrencyDetnMethod,
        ClearingIsReversed,
        PaymentMethodSupplement,
        AlternativeGLAccount,
        FundsCenter,
        Fund,
        PartnerProfitCenter,
        Reference1IDByBusinessPartner,
        Reference2IDByBusinessPartner,
        EarmarkedFundsDocument,
        EarmarkedFundsDocumentItem,
        IsNegativePosting,
        PaymentCardItem,
        PaymentCardPaymentSettlement,
        CreditControlArea,
        Reference3IDByBusinessPartner,
        DataExchangeInstruction1,
        DataExchangeInstruction2,
        DataExchangeInstruction3,
        DataExchangeInstruction4,
        Region,
        HasPaymentOrder,
        PaymentReference,
        TaxDeterminationDate,
        ClearingItem,
        BusinessPlace,
        TaxSection,
        CostCtrActivityType,
        AccountsReceivableIsPledged,
        AcctsReceivablePledgingCode,
        BusinessProcess,
        GrantID,
        FunctionalArea,
        CustomerIsInExecution,
        FundedProgram,
        ClearingDocFiscalYear,
        LedgerGLLineItem,
        Segment,
        PartnerSegment,
        PartnerFunctionalArea,
        HouseBankAccount,
        CostElement,
        TaxItemAcctgDocItemRef,
        PaymentServiceProvider,
        PaymentRefByPaytSrvcProvider,
        SEPAMandate,
        ReferenceDocumentType,
        OriginalReferenceDocument,
        ReferenceDocumentLogicalSystem,
        AccountingDocumentItemRef,
        FiscalPeriod,
        AccountingDocumentCategory,
        PostingDate,
        DocumentDate,
        AccountingDocumentType,
        NetDueDate,
        CashDiscount1DueDate,
        CashDiscount2DueDate,
        OffsettingAccount,
        OffsettingAccountType,
        OffsettingChartOfAccounts,
        PartnerFund,
        PartnerGrant,
        BudgetPeriod,
        PartnerBudgetPeriod,
        BranchCode,
        OplAcctgDocItmCntrySpcfcRef1,
        CashLedgerCompanyCode,
        CashLedgerAccount,
        PubSecBudgetAccountCoCode,
        PubSecBudgetAccount,
        CompanyCodeCurrency,
        @Semantics.amount.currencyCode: 'CompanyCodeCurrency'
        AmountInCompanyCodeCurrency,
        @Semantics.amount.currencyCode: 'CompanyCodeCurrency'
        TaxAmountInCoCodeCrcy,
        @Semantics.amount.currencyCode: 'CompanyCodeCurrency'
        TaxBaseAmountInCoCodeCrcy,
        @Semantics.amount.currencyCode: 'CompanyCodeCurrency'
        ValuationDiffAmtInCoCodeCrcy,
        @Semantics.amount.currencyCode: 'CompanyCodeCurrency'
        CashDiscountAmtInCoCodeCrcy,
        @Semantics.amount.currencyCode: 'CompanyCodeCurrency'
        InvoiceAmtInCoCodeCrcy,
        TransactionCurrency,
        @Semantics.amount.currencyCode: 'TransactionCurrency'
        AmountInTransactionCurrency,
        @Semantics.amount.currencyCode: 'TransactionCurrency'
        OriginalTaxBaseAmount,
        @Semantics.amount.currencyCode: 'TransactionCurrency'
        TaxAmount,
        @Semantics.amount.currencyCode: 'TransactionCurrency'
        TaxBaseAmountInTransCrcy,
        @Semantics.amount.currencyCode: 'TransactionCurrency'
        WithholdingTaxBaseAmount,
        @Semantics.amount.currencyCode: 'TransactionCurrency'
        PlannedAmtInTransactionCrcy,
        @Semantics.amount.currencyCode: 'TransactionCurrency'
        CashDiscountBaseAmount,
        @Semantics.amount.currencyCode: 'TransactionCurrency'
        CashDiscountAmount,
        @Semantics.amount.currencyCode: 'TransactionCurrency'
        NetPaymentAmount,
        @Semantics.amount.currencyCode: 'TransactionCurrency'
        TaxBrkdwnAmount1InTransCrcy,
        @Semantics.amount.currencyCode: 'TransactionCurrency'
        TaxBrkdwnAmount2InTransCrcy,
        @Semantics.amount.currencyCode: 'TransactionCurrency'
        TaxBrkdwnAmount3InTransCrcy,
        @Semantics.amount.currencyCode: 'TransactionCurrency'
        WithholdingTaxAmount,
        @Semantics.amount.currencyCode: 'TransactionCurrency'
        WithholdingTaxExemptionAmt,
        @Semantics.amount.currencyCode: 'TransactionCurrency'
        InvoiceAmountInFrgnCurrency,
        BalanceTransactionCurrency,
        @Semantics.amount.currencyCode: 'BalanceTransactionCurrency'
        AmountInBalanceTransacCrcy,
        AdditionalCurrency1,
        @Semantics.amount.currencyCode: 'AdditionalCurrency1'
        ValuationDiffAmtInAddlCrcy1,
        @Semantics.amount.currencyCode: 'AdditionalCurrency1'
        AmountInAdditionalCurrency1,
        @Semantics.amount.currencyCode: 'AdditionalCurrency1'
        TaxAmountInAdditionalCurrency1,
        AdditionalCurrency2,
        @Semantics.amount.currencyCode: 'AdditionalCurrency2'
        AmountInAdditionalCurrency2,
        @Semantics.amount.currencyCode: 'AdditionalCurrency2'
        TaxAmountInAdditionalCurrency2,
        @Semantics.amount.currencyCode: 'AdditionalCurrency2'
        ValuationDiffAmtInAddlCrcy2,
        PaymentCurrency,
        @Semantics.amount.currencyCode: 'PaymentCurrency'
        AmountInPaymentCurrency,
        CreditControlAreaCurrency,
        @Semantics.amount.currencyCode: 'CreditControlAreaCurrency'
        HedgedAmount,
        BaseUnit,
        @Semantics.quantity.unitOfMeasure: 'BaseUnit'
        Quantity,
        GoodsMovementEntryUnit,
        @Semantics.quantity.unitOfMeasure: 'GoodsMovementEntryUnit'
        QuantityInEntryUnit,
        PurchasingDocumentPriceUnit,
        @Semantics.quantity.unitOfMeasure: 'PurchasingDocumentPriceUnit'
        PurchaseOrderQty,
        MaterialPriceUnitQty,
        NumberOfItems,
        EarmarkedFunds,
        EarmarkedFundsItem,
        IN_GSTPartner,
        IN_GSTPlaceOfSupply,
        IN_HSNOrSACCode,
        @Semantics.amount.currencyCode: 'CompanyCodeCurrency'
        OriglTaxBaseAmountInCoCodeCrcy,
        @Semantics.amount.currencyCode: 'CompanyCodeCurrency'
        OriginalTaxBaseAmtInAddlCrcy1,
        @Semantics.amount.currencyCode: 'CompanyCodeCurrency'
        OriginalTaxBaseAmtInAddlCrcy2,
        GLAccountAuthorizationGroup,
        SupplierBasicAuthorizationGrp,
        CustomerBasicAuthorizationGrp,
        AcctgDocTypeAuthorizationGroup,
        OrderType,
        SalesOrderType,
        AssetClass,

        _ClearingAccountingDocument.DocumentDate as DocumentDateHeader,
        _ClearingAccountingDocument.TaxReportingDate,
        _SalesDoc.SalesDocumentDate
        //        _SalesDocItem.SalesDocumentItemUUID,
        //        _SalesDocItem.SDDocumentCategory,
        //        _SalesDocItem.SalesDocumentItemCategory,
        //        _SalesDocItem.SalesDocumentItemType,
        //        _SalesDocItem.IsReturnsItem,
        //        _SalesDocItem.CompletionRule,
        //        _SalesDocItem.CreatedByUser,
        //        _SalesDocItem.CreationDate,
        //        _SalesDocItem.CreationTime,
        //        _SalesDocItem.LastChangeDate,
        //        _SalesDocItem.Division,
        //        _SalesDocItem.OriginallyRequestedMaterial,
        //        _SalesDocItem.MaterialByCustomer,
        //        _SalesDocItem.InternationalArticleNumber,
        //        _SalesDocItem.Batch,
        //        _SalesDocItem.ProductHierarchyNode,
        //        _SalesDocItem.ProductCatalog,
        //        _SalesDocItem.MaterialSubstitutionReason,
        //        _SalesDocItem.MaterialGroup,
        //        _SalesDocItem.ProductGroup,
        //        _SalesDocItem.AdditionalMaterialGroup1,
        //        _SalesDocItem.AdditionalMaterialGroup2,
        //        _SalesDocItem.AdditionalMaterialGroup3,
        //        _SalesDocItem.AdditionalMaterialGroup4,
        //        _SalesDocItem.AdditionalMaterialGroup5,
        //        _SalesDocItem.ProductConfiguration,
        //        _SalesDocItem.MaterialDeterminationType,
        //        _SalesDocItem.HigherLevelItemUsage,
        //        _SalesDocItem.MRPArea,
        //        _SalesDocItem.BillOfMaterial,
        //        _SalesDocItem.BOMExplosionDate,
        //        _SalesDocItem.ProdAvailabilityCheckGroup,
        //        _SalesDocItem.SalesDocumentItemText,
        //        _SalesDocItem.PurchaseOrderByCustomer,
        //        _SalesDocItem.PurchaseOrderByShipToParty,
        //        _SalesDocItem.UnderlyingPurchaseOrderItem,
        //        _SalesDocItem.ExternalItemID,
        //        @Semantics.quantity.unitOfMeasure: 'OrderQuantityUnit'
        //        _SalesDocItem.OrderQuantity,
        //        _SalesDocItem.OrderQuantityUnit,
        //        _SalesDocItem.OrderToBaseQuantityDnmntr,
        //        _SalesDocItem.OrderToBaseQuantityNmrtr,
        //        @Semantics.quantity.unitOfMeasure: 'TargetQuantityUnit'
        //        _SalesDocItem.TargetQuantity,
        //        _SalesDocItem.TargetQuantityUnit,
        //        _SalesDocItem.TargetToBaseQuantityDnmntr,
        //        _SalesDocItem.TargetToBaseQuantityNmrtr,
        //        @Semantics.quantity.unitOfMeasure: 'OrderQuantityUnit'
        //        _SalesDocItem.ConfdDelivQtyInOrderQtyUnit,
        //        @Semantics.quantity.unitOfMeasure: 'OrderQuantityUnit'
        //        _SalesDocItem.TargetDelivQtyInOrderQtyUnit,
        //        @Semantics.quantity.unitOfMeasure: 'BaseUnit'
        //        _SalesDocItem.ConfdDeliveryQtyInBaseUnit,
        //        _SalesDocItem.MDSubstnConversionNumerator,
        //        _SalesDocItem.MDSubstnConversionDenominator,
        //        @Semantics.quantity.unitOfMeasure: 'OrderQuantityUnit'
        //        _SalesDocItem.CommittedDelivQtyInOrdQtyUnit,
        //        _SalesDocItem.CommittedDelivCreationDate,
        //        _SalesDocItem.CommittedDeliveryDate,
        //        @Semantics.quantity.unitOfMeasure: 'RequestedQuantityUnit'
        //        _SalesDocItem.RequestedQuantity,
        //        _SalesDocItem.RequestedQuantityUnit,
        //        @Semantics.quantity.unitOfMeasure: 'BaseUnit'
        //        _SalesDocItem.RequestedQuantityInBaseUnit,
        //        @Semantics.quantity.unitOfMeasure: 'ItemWeightUnit'
        //        _SalesDocItem.ItemGrossWeight,
        //        @Semantics.quantity.unitOfMeasure: 'ItemWeightUnit'
        //        _SalesDocItem.ItemNetWeight,
        //        _SalesDocItem.ItemWeightUnit,
        //        @Semantics.quantity.unitOfMeasure: 'ItemVolumeUnit'
        //        _SalesDocItem.ItemVolume,
        //        _SalesDocItem.ItemVolumeUnit,
        //        _SalesDocItem.ServicesRenderedDate,
        //        _SalesDocItem.SalesDistrict,
        //        _SalesDocItem.SalesDeal,
        //        _SalesDocItem.SalesPromotion,
        //        _SalesDocItem.RetailPromotion,
        //        _SalesDocItem.CustomerGroup,
        //        _SalesDocItem.SlsDocIsRlvtForProofOfDeliv,
        //        _SalesDocItem.SalesDocumentRjcnReason,
        //        _SalesDocItem.AlternativeToItem,
        //        _SalesDocItem.ReturnReason,
        //        _SalesDocItem.ReturnsRefundExtent,
        //        _SalesDocItem.RetsMgmtProcessingBlock,
        //        _SalesDocItem.RequirementSegment,
        //        _SalesDocItem.QuantityIsFixed,
        //        _SalesDocItem.ItemOrderProbabilityInPercent,
        //        @Semantics.amount.currencyCode: 'TransactionCurrency'
        //        _SalesDocItem.OutlineAgreementTargetAmount,
        //        _SalesDocItem.SalesContractValidityStartDate,
        //        _SalesDocItem.SalesContractValidityEndDate,
        //        _SalesDocItem.NmbrOfSalesContractValdtyPerd,
        //        _SalesDocItem.SalesContractValidityPerdUnit,
        //        _SalesDocItem.SalesContractValidityPerdCat,
        //        _SalesDocItem.SalesContractSignedDate,
        //        _SalesDocItem.EquipmentInstallationDate,
        //        _SalesDocItem.EquipmentDeliveryAccptcDate,
        //        _SalesDocItem.EquipmentDismantlingDate,
        //        _SalesDocItem.SalesContractCanclnProcedure,
        //        _SalesDocItem.RequestedCancellationDate,
        //        _SalesDocItem.SlsContractCanclnReqRcptDate,
        //        _SalesDocItem.CanclnDocByContrPartner,
        //        _SalesDocItem.ContractPartnerCanclnDocDate,
        //        _SalesDocItem.SalesContractCanclnParty,
        //        _SalesDocItem.SalesContractCanclnReason,
        //        _SalesDocItem.SalesContractFollowUpAction,
        //        _SalesDocItem.SlsContractFollowUpActionDate,
        //        _SalesDocItem.SalesDocumentItemProcgCode,
        //        _SalesDocItem.PlngDelivSchedInstrn,
        //        @Semantics.amount.currencyCode: 'TransactionCurrency'
        //        _SalesDocItem.NetAmount,
        //        _SalesDocItem.PricingReferenceMaterial,
        //        _SalesDocItem.MaterialPricingGroup,
        //        _SalesDocItem.ProductTaxClassification1,
        //        _SalesDocItem.ProductTaxClassification2,
        //        _SalesDocItem.ProductTaxClassification3,
        //        _SalesDocItem.ProductTaxClassification4,
        //        _SalesDocItem.ProductTaxClassification5,
        //        _SalesDocItem.ProductTaxClassification6,
        //        _SalesDocItem.ProductTaxClassification7,
        //        _SalesDocItem.ProductTaxClassification8,
        //        _SalesDocItem.ProductTaxClassification9,
        //        _SalesDocItem.MatlAccountAssignmentGroup,
        //        _SalesDocItem.PricingDate,
        //        _SalesDocItem.ExchangeRateDate,
        //        _SalesDocItem.PriceDetnExchangeRate,
        //        @Semantics.amount.currencyCode: 'TransactionCurrency'
        //        _SalesDocItem.NetPriceAmount,
        //        _SalesDocItem.NetPriceQuantity,
        //        _SalesDocItem.NetPriceQuantityUnit,
        //        _SalesDocItem.StatisticalValueControl,
        //        @Semantics.amount.currencyCode: 'TransactionCurrency'
        //        _SalesDocItem.CostAmount,
        //        @Semantics.amount.currencyCode: 'TransactionCurrency'
        //        _SalesDocItem.Subtotal1Amount,
        //        @Semantics.amount.currencyCode: 'TransactionCurrency'
        //        _SalesDocItem.Subtotal2Amount,
        //        @Semantics.amount.currencyCode: 'TransactionCurrency'
        //        _SalesDocItem.Subtotal3Amount,
        //        @Semantics.amount.currencyCode: 'TransactionCurrency'
        //        _SalesDocItem.Subtotal4Amount,
        //        @Semantics.amount.currencyCode: 'TransactionCurrency'
        //        _SalesDocItem.Subtotal5Amount,
        //        @Semantics.amount.currencyCode: 'TransactionCurrency'
        //        _SalesDocItem.Subtotal6Amount,
        //        _SalesDocItem.SalesDocumentCondition,
        //        _SalesDocItem.CustomerPriceGroup,
        //        _SalesDocItem.ShippingPoint,
        //        _SalesDocItem.ShippingType,
        //        _SalesDocItem.InventorySpecialStockType,
        //        _SalesDocItem.InventorySpecialStockValnType,
        //        _SalesDocItem.DeliveryPriority,
        //        _SalesDocItem.OriginalPlant,
        //        _SalesDocItem.StorageLocation,
        //        _SalesDocItem.Route,
        //        _SalesDocItem.DeliveryGroup,
        //        _SalesDocItem.DeliveryDateQuantityIsFixed,
        //        _SalesDocItem.PartialDeliveryIsAllowed,
        //        _SalesDocItem.MaxNmbrOfPartialDelivery,
        //        _SalesDocItem.UnlimitedOverdeliveryIsAllowed,
        //        _SalesDocItem.OverdelivTolrtdLmtRatioInPct,
        //        _SalesDocItem.UnderdelivTolrtdLmtRatioInPct,
        //        @Semantics.quantity.unitOfMeasure: 'BaseUnit'
        //        _SalesDocItem.MinDeliveryQtyInBaseUnit,
        //        _SalesDocItem.OpenDeliveryLeadingUnitCode,
        //        _SalesDocItem.ItemIsDeliveryRelevant,
        //        _SalesDocItem.ProductSeasonYear,
        //        _SalesDocItem.ProductSeason,
        //        _SalesDocItem.ProductCollection,
        //        _SalesDocItem.ProductTheme,
        //        _SalesDocItem.FashionCancelDate,
        //        _SalesDocItem.ProductCharacteristic1,
        //        _SalesDocItem.ProductCharacteristic2,
        //        _SalesDocItem.ProductCharacteristic3,
        //        _SalesDocItem.ShippingGroupNumber,
        //        _SalesDocItem.ShippingGroupRule,
        //        _SalesDocItem.ARunPriorityValue,
        //        _SalesDocItem.ARunDemandGroupPriority,
        //        _SalesDocItem.BillingDocumentDate,
        //        _SalesDocItem.ItemIsBillingRelevant,
        //        _SalesDocItem.ItemBillingBlockReason,
        //        _SalesDocItem.BillingPlan,
        //        _SalesDocItem.ReferenceBillingPlan,
        //        _SalesDocItem.ReferenceBillingPlanItem,
        //        _SalesDocItem.IncotermsVersion,
        //        _SalesDocItem.IncotermsClassification,
        //        _SalesDocItem.IncotermsTransferLocation,
        //        _SalesDocItem.IncotermsLocation1,
        //        _SalesDocItem.IncotermsLocation2,
        //        _SalesDocItem.CustomerPaymentTerms,
        //        _SalesDocItem.FixedValueDate,
        //        _SalesDocItem.AdditionalValueDays,
        //        _SalesDocItem.ContractAccount,
        //        _SalesDocItem.CustomerAccountAssignmentGroup,
        //        _SalesDocItem.WBSElement,
        //        _SalesDocItem.ControllingObject,
        //        _SalesDocItem.OriginSDDocument,
        //        _SalesDocItem.OriginSDDocumentItem,
        //        _SalesDocItem.AccountingExchangeRate,
        //        _SalesDocItem.ReferenceSDDocument,
        //        _SalesDocItem.ReferenceSDDocumentItem,
        //        _SalesDocItem.ReferenceSDDocumentCategory,
        //        _SalesDocItem.HigherLevelItem,
        //        _SalesDocItem.ValueContract,
        //        _SalesDocItem.ValueContractItem,
        //        _SalesDocItem.BusinessSolutionOrder,
        //        _SalesDocItem.BusinessSolutionOrderItem,
        //        _SalesDocItem.SDProcessStatus,
        //        _SalesDocItem.DeliveryConfirmationStatus,
        //        _SalesDocItem.DeliveryDateTypeRule,
        //        _SalesDocItem.PurchaseConfirmationStatus,
        //        _SalesDocItem.TotalDeliveryStatus,
        //        _SalesDocItem.DeliveryStatus,
        //        _SalesDocItem.DeliveryBlockStatus,
        //        _SalesDocItem.OrderRelatedBillingStatus,
        //        _SalesDocItem.BillingBlockStatus,
        //        _SalesDocItem.ItemGeneralIncompletionStatus,
        //        _SalesDocItem.ItemBillingIncompletionStatus,
        //        _SalesDocItem.PricingIncompletionStatus,
        //        _SalesDocItem.ItemDeliveryIncompletionStatus,
        //        _SalesDocItem.SDDocumentRejectionStatus,
        //        _SalesDocItem.TotalSDDocReferenceStatus,
        //        _SalesDocItem.SDDocReferenceStatus,
        //        _SalesDocItem.ChmlCmplncStatus,
        //        _SalesDocItem.DangerousGoodsStatus,
        //        _SalesDocItem.SafetyDataSheetStatus,
        //        _SalesDocItem.TrdCmplncEmbargoSts,
        //        _SalesDocItem.TrdCmplncSnctndListChkSts,
        //        _SalesDocItem.OvrlTrdCmplncLegalCtrlChkSts,
        //        _SalesDocItem.AltvBsdConfSubstitutionStatus,
        //        _SalesDocItem.ContractItemDownPaymentStatus,
        //        @Semantics.amount.currencyCode: 'TransactionCurrency'
        //        _SalesDocItem.CappedNetAmount,
        //        _SalesDocItem.CappedNetAmtAlertThldInPct,
        //        @Semantics.amount.currencyCode: 'TransactionCurrency'
        //        _SalesDocItem.TotalStandAloneSellingPrice,
        //        _SalesDocItem.ResultAnalysisInternalID,
        //        _SalesDocItem.SalesDocumentType,
        //        _SalesDocItem.SalesOrganization,
        //        _SalesDocItem.DistributionChannel,
        //        _SalesDocItem.OrganizationDivision,
        //        _SalesDocItem.SalesOffice,
        //        _SalesDocItem.SalesGroup,
        //        _SalesDocItem.SoldToParty,
        //        _SalesDocItem.AdditionalCustomerGroup1,
        //        _SalesDocItem.AdditionalCustomerGroup2,
        //        _SalesDocItem.AdditionalCustomerGroup3,
        //        _SalesDocItem.AdditionalCustomerGroup4,
        //        _SalesDocItem.AdditionalCustomerGroup5,
        //        _SalesDocItem.SalesDocumentDate,
        //        _SalesDocItem.SDDocumentReason,
        //        _SalesDocItem.RequestedDeliveryDate,
        //        _SalesDocItem.ShippingCondition,
        //        _SalesDocItem.ShipToParty,
        //        _SalesDocItem.PayerParty,
        //        _SalesDocItem.BillToParty,
        //        _SalesDocItem.SalesEmployee,
        //        _SalesDocItem.ResponsibleEmployee,
        //        _SalesDocItem.SalesEmployeeWorkAgreement,
        //        _SalesDocItem.ResponsibleEmployeeWorkAgrmt,
        //        _SalesDocItem.OmniChannelSalesPromotion,
        //        _SalesDocItem.OmniChannelSalesPromotionRule,
        //        _SalesDocItem.ConsumptionPosting

  }