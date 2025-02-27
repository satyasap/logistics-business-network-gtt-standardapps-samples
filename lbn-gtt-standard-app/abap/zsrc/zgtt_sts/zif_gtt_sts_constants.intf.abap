INTERFACE zif_gtt_sts_constants
  PUBLIC .


  CONSTANTS:
    BEGIN OF cs_tabledef,
      fo_header_new TYPE /saptrx/strucdatadef VALUE 'TOR_ROOT',
      fo_header_old TYPE /saptrx/strucdatadef VALUE 'TOR_ROOT_BEFORE',
      fo_item_new   TYPE /saptrx/strucdatadef VALUE 'TOR_ITEM',
      fo_item_old   TYPE /saptrx/strucdatadef VALUE 'TOR_ITEM_BEFORE',
      fo_stop_new   TYPE /saptrx/strucdatadef VALUE 'TOR_STOP',
      fo_stop_old   TYPE /saptrx/strucdatadef VALUE 'TOR_STOP_BEFORE',
      fo_stop_addr  TYPE /saptrx/strucdatadef VALUE 'TOR_STOP_ADDR',
      fo_loc_addr   TYPE /saptrx/strucdatadef VALUE 'TOR_LOCATION_ADDR',
    END OF cs_tabledef .
  CONSTANTS:
    BEGIN OF cs_system_fields,
      actual_bisiness_timezone TYPE /saptrx/paramname VALUE 'ACTUAL_BUSINESS_TIMEZONE',
      actual_bisiness_datetime TYPE /saptrx/paramname VALUE 'ACTUAL_BUSINESS_DATETIME',
    END OF cs_system_fields .
  CONSTANTS:
    BEGIN OF cs_trxcod,
      fo_number   TYPE /saptrx/trxcod VALUE 'FT1_SHIPMENT',
      fu_number   TYPE /saptrx/trxcod VALUE 'FT1_FREIGHT_UNIT',
      fo_resource TYPE /saptrx/trxcod VALUE 'FT1_RESOURCE',
    END OF cs_trxcod .
  CONSTANTS:
    BEGIN OF cs_milestone,
      fo_load_start    TYPE /saptrx/appl_event_tag VALUE 'LOAD_BEGIN',
      fo_load_end      TYPE /saptrx/appl_event_tag VALUE 'LOAD_END',
      fo_coupling      TYPE /saptrx/appl_event_tag VALUE 'COUPLING',
      fo_decoupling    TYPE /saptrx/appl_event_tag VALUE 'DECOUPLING',
      fo_shp_departure TYPE /saptrx/appl_event_tag VALUE 'DEPARTURE',
      fo_shp_arrival   TYPE /saptrx/appl_event_tag VALUE 'ARRIV_DEST',
      fo_shp_pod       TYPE /saptrx/appl_event_tag VALUE 'POD',
      fo_unload_start  TYPE /saptrx/appl_event_tag VALUE 'UNLOAD_BEGIN',
      fo_unload_end    TYPE /saptrx/appl_event_tag VALUE 'UNLOAD_END',
    END OF cs_milestone .
  CONSTANTS:
    BEGIN OF cs_location_type,
      logistic TYPE string VALUE 'LogisticLocation',
    END OF cs_location_type .
  CONSTANTS:
    BEGIN OF cs_lifecycle_status,
      draft      TYPE /scmtms/tor_lc_status VALUE '00',
      new        TYPE /scmtms/tor_lc_status VALUE '01',
      in_process TYPE /scmtms/tor_lc_status VALUE '02',
      completed  TYPE /scmtms/tor_lc_status VALUE '05',
      canceled   TYPE /scmtms/tor_lc_status VALUE '10',
    END OF cs_lifecycle_status .
  CONSTANTS:
    BEGIN OF cs_execution_status,
      not_relevant               TYPE /scmtms/tor_execution_status VALUE '01',
      not_started                TYPE /scmtms/tor_execution_status VALUE '02',
      in_execution               TYPE /scmtms/tor_execution_status VALUE '03',
      executed                   TYPE /scmtms/tor_execution_status VALUE '04',
      interrupted                TYPE /scmtms/tor_execution_status VALUE '05',
      canceled                   TYPE /scmtms/tor_execution_status VALUE '06',
      ready_for_transp_exec      TYPE /scmtms/tor_execution_status VALUE '07',
      not_ready_for_transp_exec  TYPE /scmtms/tor_execution_status VALUE '08',
      loading_in_process         TYPE /scmtms/tor_execution_status VALUE '09',
      capacity_planning_finished TYPE /scmtms/tor_execution_status VALUE '10',
    END OF cs_execution_status .
  CONSTANTS:
    BEGIN OF cs_track_exec_rel,
      no_execution                TYPE /scmtms/track_exec_rel VALUE '1',
      execution                   TYPE /scmtms/track_exec_rel VALUE '2',
      exec_with_extern_event_mngr TYPE /scmtms/track_exec_rel VALUE '3',
    END OF cs_track_exec_rel .
  CONSTANTS:
    BEGIN OF cs_trmodcod,
      road            TYPE /scmtms/trmodcode VALUE '01',
      rail            TYPE /scmtms/trmodcode VALUE '02',
      sea             TYPE /scmtms/trmodcode VALUE '03',
      inland_waterway TYPE /scmtms/trmodcode VALUE '04',
      air             TYPE /scmtms/trmodcode VALUE '05',
      postal_service  TYPE /scmtms/trmodcode VALUE '06',
      na              TYPE /scmtms/trmodcode VALUE '',
    END OF cs_trmodcod .
  CONSTANTS:
    BEGIN OF cs_uom,
      piece TYPE meins VALUE 'EA',
      km    TYPE meins VALUE 'KM',
    END OF cs_uom .
  CONSTANTS:
    BEGIN OF cs_shipment_type,
      tor TYPE string VALUE 'TOR',
    END OF cs_shipment_type.

ENDINTERFACE.
