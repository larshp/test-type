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
    RETURN.
  ENDMETHOD.


  METHOD zif_abapgit_object~is_active.
    rv_active = abap_true.
  ENDMETHOD.


  METHOD zif_abapgit_object~is_locked.
    RETURN.
  ENDMETHOD.


  METHOD zif_abapgit_object~jump.
    RETURN.
  ENDMETHOD.


  METHOD zif_abapgit_object~map_filename_to_object.
    RETURN.
  ENDMETHOD.


  METHOD zif_abapgit_object~map_object_to_filename.
    RETURN.
  ENDMETHOD.


  METHOD zif_abapgit_object~serialize.

    DATA ls_file TYPE zif_abapgit_git_definitions=>ty_file.

    ls_file-filename = zcl_abapgit_filename_logic=>object_to_file(
      is_item  = ms_item
      iv_ext   = 'json' ).

    ls_file-data = '{"ssdff": 2}'.

    zif_abapgit_object~mo_files->add( ls_file ).

  ENDMETHOD.
ENDCLASS.
