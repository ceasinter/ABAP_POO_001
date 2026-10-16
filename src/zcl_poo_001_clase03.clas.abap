CLASS zcl_poo_001_clase03 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_poo_001_clase03 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*  MANERAS DE INSTANCIAR UN OBJETO DE UNA CLASE
*  data lo_contract type REF TO zcl_poo_001_clase02.
*  create OBJECT lo_contract.
*  lo_contract = new #( ).
    DATA(lo_contract) = NEW zcl_poo_001_clase02(  ).
    DATA lv_process TYPE string.

    IF lo_contract IS BOUND.
      lo_contract->set_client(
        EXPORTING
          iv_client   = 'Charlie Sotto'
          iv_location = space
        IMPORTING
          ev_status   = DATA(lv_status)
        CHANGING
          cv_process  = lv_process
      ).

      lo_contract->get_client(
        IMPORTING
          ev_client = DATA(lv_client)
      ).
    ENDIF.
    out->write( |{ lv_client } - { lv_status } - { lv_process }| ).

  ENDMETHOD.
ENDCLASS.
