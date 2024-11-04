INTERFACE zif_document_s4
  PUBLIC.

  CONSTANTS:
    BEGIN OF cds,
      i_fiposition       TYPE string VALUE `ZI_FIPosition`,
    END OF cds.

  TYPES: BEGIN OF ty_key,
    companycode        TYPE zi_header-companycode,
    fiscalyear         TYPE zi_header-fiscalyear,
    accountingdocument TYPE zi_header-accountingdocument,
    billingdocument    TYPE zi_header-billingdocument,
    sourceledger       TYPE zi_fiposition-sourceledger,
    END OF ty_key.

  "! Returns a tax rate for position
  "! @parameter fi_position | FI position
  "! @parameter result | Tax Rate
  METHODS get_tax_rate_for_position
    IMPORTING fi_position   TYPE zi_fiposition
              foo           TYPE ty_key-billingdocument
    RETURNING VALUE(result) TYPE string.
ENDINTERFACE.
