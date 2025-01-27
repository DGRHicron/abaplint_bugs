INTERFACE zif_document_s4
  PUBLIC.

  CONSTANTS:
    BEGIN OF cds,
      i_fiposition       TYPE string VALUE `ZI_FIPosition`,
    END OF cds.

  TYPES: BEGIN OF ty_key ##NEEDED,
    companycode            TYPE zi_header-companycode,
    fiscalyear             TYPE zi_header-fiscalyear,
    accountingdocument     TYPE zi_header-accountingdocument,
    billingdocument        TYPE zi_header-billingdocument,
    sourceledger           TYPE zi_fiposition-sourceledger,
    accountingdocumentitem TYPE zi_fipositionbseg-accountingdocumentitem,
    END OF ty_key.

  TYPES ty_fi_positions_bseg TYPE SORTED TABLE OF zi_fipositionbseg
      WITH UNIQUE KEY companycode accountingdocument fiscalyear accountingdocumentitem ##NEEDED.

  TYPES ty_sd_positions TYPE SORTED TABLE OF zi_sdposition
      WITH UNIQUE KEY billingdocument billingdocumentitem ##NEEDED.

  TYPES: BEGIN OF ty_customer ##NEEDED,
      customer TYPE zi_customer,
      address  TYPE zi_address,
    END OF ty_customer.


  TYPES: BEGIN OF ty_company_data ##NEEDED,
             address TYPE zi_address,
           END OF ty_company_data.


  "! Returns a tax rate for position
  "! @parameter fi_position | FI position
  "! @parameter result | Tax Rate
  METHODS get_tax_rate_for_position
    IMPORTING fi_position   TYPE zi_fiposition
              foo           TYPE ty_key-billingdocument
    RETURNING VALUE(result) TYPE string.
ENDINTERFACE.
