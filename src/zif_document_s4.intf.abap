INTERFACE zif_document_s4
  PUBLIC.

  CONSTANTS:
    BEGIN OF cds,
      i_fiposition       TYPE string VALUE `ZI_FIPosition`,
    END OF cds.

  "! Returns a tax rate for position
  "! @parameter fi_position | FI position
  "! @parameter result | Tax Rate
  METHODS get_tax_rate_for_position
    IMPORTING fi_position   TYPE zi_fiposition
    RETURNING VALUE(result) TYPE string.
ENDINTERFACE.
