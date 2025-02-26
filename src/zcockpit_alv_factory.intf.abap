INTERFACE zcockpit_alv_factory
  PUBLIC.

  "! Create ALV for Purchases
  "! @parameter selection_params | Selection parameters
  "! @parameter repid | report ID
  "! @parameter result | Created alv object
  "! @parameter data | Purchase data
  METHODS create_alv_purchases
    IMPORTING selection_params TYPE data
              repid            TYPE sy-repid OPTIONAL
              dataa            TYPE REF TO data
    RETURNING VALUE(result)    TYPE REF TO data.
ENDINTERFACE.
