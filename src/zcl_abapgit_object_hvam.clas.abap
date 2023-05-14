CLASS zcl_abapgit_object_hvam DEFINITION
  PUBLIC
  INHERITING FROM zcl_abapgit_objects_super
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_abapgit_object .

  PROTECTED SECTION.

ENDCLASS.



CLASS ZCL_ABAPGIT_OBJECT_HVAM IMPLEMENTATION.


  METHOD zif_abapgit_object~changed_by.
    rv_user = 'LARS'.
  ENDMETHOD.


  METHOD zif_abapgit_object~delete.
    RETURN.
  ENDMETHOD.


  METHOD zif_abapgit_object~deserialize.

    ASSERT ms_item-obj_name = '39b1b613-f083-49fb-869b-f6125bbb5129'.
    BREAK-POINT.
* todo

  ENDMETHOD.


  METHOD zif_abapgit_object~exists.
    rv_bool = abap_true.
  ENDMETHOD.


  METHOD zif_abapgit_object~get_comparator.
    RETURN.
  ENDMETHOD.


  METHOD zif_abapgit_object~get_deserialize_order.
    RETURN.
  ENDMETHOD.


  METHOD zif_abapgit_object~get_deserialize_steps.
    APPEND zif_abapgit_object=>gc_step_id-late TO rt_steps.
  ENDMETHOD.


  METHOD zif_abapgit_object~get_metadata.
    rs_metadata = get_metadata( ).
  ENDMETHOD.


  METHOD zif_abapgit_object~is_active.
    rv_active = abap_true.
  ENDMETHOD.


  METHOD zif_abapgit_object~is_locked.
    rv_is_locked = abap_false.
  ENDMETHOD.


  METHOD zif_abapgit_object~jump.
    RETURN.
  ENDMETHOD.


  METHOD zif_abapgit_object~map_filename_to_object.

    ASSERT iv_filename = 'pretty_name.hvam.xml'.

    cs_item-obj_name = '39b1b613-f083-49fb-869b-f6125bbb5129'.

  ENDMETHOD.


  METHOD zif_abapgit_object~map_object_to_filename.
    cv_filename = 'pretty_name.hvam.xml'.
  ENDMETHOD.


  METHOD zif_abapgit_object~serialize.

    ASSERT ms_item-obj_name = '39b1b613-f083-49fb-869b-f6125bbb5129'.

    io_xml->add(
      iv_name = 'foo'
      ig_data = 'bar' ).

  ENDMETHOD.
ENDCLASS.
