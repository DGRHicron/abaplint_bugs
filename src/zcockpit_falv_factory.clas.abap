CLASS zcockpit_falv_factory DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES zcockpit_alv_factory.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcockpit_falv_factory IMPLEMENTATION.
  METHOD zcockpit_alv_factory~create_alv_purchases.
    WRITE 'test'.
  ENDMETHOD.
ENDCLASS.
