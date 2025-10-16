CLASS zjm_cl_travel_generator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zjm_cl_travel_generator IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA ls_travel TYPE zjm_travel.
    DATA lt_travel TYPE TABLE OF zjm_travel.

    " Delete Travels
    DELETE FROM zjm_travel.
    out->write( |Deleted Travels: { sy-dbcnt }| ).

    " Create Travels

    ls_travel-agency_id = '000001'.
    ls_travel-begin_date = '20231027'.
    ls_travel-booking_fee = '40.95'.
    ls_travel-client = sy-mandt.
    ls_travel-created_by = 'GENERATOR'.
    ls_travel-currency_code = 'EUR'.
    ls_travel-customer_id = '000004'.
    ls_travel-description = 'Kurztrip nach Hamburg'.
    ls_travel-end_date = '20231030'.
    ls_travel-last_changed_by = 'GENERATOR'.
    ls_travel-status = 'B'.
    ls_travel-total_price = '650.50'.
    ls_travel-travel_id = '0000001'.
    ls_travel-travel_uuid = cl_system_uuid=>create_uuid_x16_static(  ).
    GET TIME STAMP FIELD ls_travel-created_at.
    GET TIME STAMP FIELD ls_travel-last_changed_at.

    APPEND ls_travel TO lt_travel.

    ls_travel-agency_id = '000023'.
    ls_travel-begin_date = '20240707'.
    ls_travel-booking_fee = '150.00'.
    ls_travel-client = sy-mandt.
    ls_travel-created_by = 'GENERATOR'.
    ls_travel-currency_code = 'EUR'.
    ls_travel-customer_id = '000066'.
    ls_travel-description = 'Italienurlaub 2024'.
    ls_travel-end_date = '20240723'.
    ls_travel-last_changed_by = 'GENERATOR'.
    ls_travel-status = 'P'.
    ls_travel-total_price = '2188.00'.
    ls_travel-travel_id = '0000002'.
    ls_travel-travel_uuid = cl_system_uuid=>create_uuid_x16_static(  ).
    GET TIME STAMP FIELD ls_travel-created_at.
    GET TIME STAMP FIELD ls_travel-last_changed_at.

    APPEND ls_travel TO lt_travel.

    ls_travel-agency_id = '000045'.
    ls_travel-begin_date = '20221231'.
    ls_travel-booking_fee = '77.99'.
    ls_travel-client = sy-mandt.
    ls_travel-created_by = 'GENERATOR'.
    ls_travel-currency_code = 'USD'.
    ls_travel-customer_id = '000026'.
    ls_travel-description = 'Silvester New York'.
    ls_travel-end_date = '20230104'.
    ls_travel-last_changed_by = 'GENERATOR'.
    ls_travel-status = 'B'.
    ls_travel-total_price = '389.00'.
    ls_travel-travel_id = '0000003'.
    ls_travel-travel_uuid = cl_system_uuid=>create_uuid_x16_static(  ).
    GET TIME STAMP FIELD ls_travel-created_at.
    GET TIME STAMP FIELD ls_travel-last_changed_at.

    APPEND ls_travel TO lt_travel.

    ls_travel-agency_id = '000045'.
    ls_travel-begin_date = '20231101'.
    ls_travel-booking_fee = '0.00'.
    ls_travel-client = sy-mandt.
    ls_travel-created_by = 'GENERATOR'.
    ls_travel-currency_code = 'SGD'.
    ls_travel-customer_id = '00003'.
    ls_travel-description = 'Business Trip to Singapur'.
    ls_travel-end_date = '20231108'.
    ls_travel-last_changed_by = 'GENERATOR'.
    ls_travel-status = 'N'.
    ls_travel-total_price = '1290.00'.
    ls_travel-travel_id = '0000004'.
    ls_travel-travel_uuid = cl_system_uuid=>create_uuid_x16_static(  ).
    GET TIME STAMP FIELD ls_travel-created_at.
    GET TIME STAMP FIELD ls_travel-last_changed_at.

    APPEND ls_travel TO lt_travel.

    INSERT zls_travel FROM TABLE @lt_travel.
    out->write( |INSERTED Travels: { sy-dbcnt } | ).

  ENDMETHOD.

ENDCLASS.
