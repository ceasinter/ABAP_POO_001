CLASS zcl_poo_001_clase01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_poo_001_clase01 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    out->write( 'Primera Clase de Abap POO' ).
  ENDMETHOD.

ENDCLASS.
