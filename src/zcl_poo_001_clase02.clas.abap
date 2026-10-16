CLASS zcl_poo_001_clase02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
*    ATRIBUTO ESTÁTICO
    CLASS-DATA currency TYPE c LENGTH 3.

*    MÉTODOS DE INSTANCIA
    METHODS set_client IMPORTING iv_client   TYPE string
                                 iv_location TYPE string
                       EXPORTING ev_status   TYPE string
                       CHANGING  cv_process  TYPE string.


    METHODS get_client EXPORTING ev_client TYPE string.

*    METODO ESTÁTICO
    CLASS-METHODS: set_cntr_type IMPORTING iv_cntr_type TYPE string,
      get_cntr_type EXPORTING ev_cntr_type TYPE string.

  PROTECTED SECTION.
    DATA creation_date TYPE sydate.

  PRIVATE SECTION.
    DATA client TYPE string.
*    ATRIBUTO ESTÁTICO
    CLASS-DATA cntr_type TYPE string.

ENDCLASS.


CLASS zcl_poo_001_clase02 IMPLEMENTATION.
  METHOD set_client.
    client = iv_client.
    ev_status = 'Ok'.
    cv_process = 'Started'.
  ENDMETHOD.

  METHOD get_client.
    ev_client = client.
  ENDMETHOD.

  METHOD get_cntr_type.
    ev_cntr_type = cntr_type.
  ENDMETHOD.

  METHOD set_cntr_type.
    cntr_type = iv_cntr_type.
  ENDMETHOD.

ENDCLASS.
