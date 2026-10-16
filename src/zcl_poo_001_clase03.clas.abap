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

*    INSTANCIAR OBJETOS ESTÁTICOS
    zcl_poo_001_clase02=>set_cntr_type( iv_cntr_type = 'Construction' ).
    zcl_poo_001_clase02=>get_cntr_type(
      IMPORTING
        ev_cntr_type = DATA(lv_cntr_type)
    ).
    zcl_poo_001_clase02=>currency = 'USD'.

    out->write( |{ lv_client } - { lv_status } - { lv_process }| ).
    out->write( lv_cntr_type ).
    out->write( lo_contract->currency ).

  ENDMETHOD.
ENDCLASS.
