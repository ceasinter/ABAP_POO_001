CLASS zcl_poo_001_clase02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
*    ATRIBUTO ESTÁTICO
    CLASS-DATA currency TYPE c LENGTH 3.

*    MÉTODOS DE INSTANCIA
    METHODS set_client IMPORTING VALUE(iv_client)   TYPE string
                                 VALUE(iv_location) TYPE string
                       EXPORTING VALUE(ev_status)   TYPE string
                       CHANGING  VALUE(cv_process)  TYPE string.


    METHODS get_client EXPORTING ev_client TYPE string.
    METHODS get_client_name IMPORTING iv_client_id          TYPE string
                            RETURNING VALUE(rv_client_name) TYPE string.

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

  METHOD get_client_name.
    CASE iv_client_id.
      WHEN '01'.
        rv_client_name = 'Cliente 01..: Pedro José Pérez Medina'.
      WHEN '02'.
        rv_client_name = 'Cliente 02..: Mariana del Valle Belizario Angarita'.
    ENDCASE.
  ENDMETHOD.

ENDCLASS.
