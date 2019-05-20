create package PLACE_PACKAGE AS
  TYPE T_PLACE IS RECORD (
  place_id NUMBER,
  address VARCHAR2(60),
  room_number NUMBER,
  schedule VARCHAR2(11)
  );
  TYPE T_PLACE_TABLE IS TABLE OF T_PLACE;
  FUNCTION GET_PLACE(P_ID IN Place.place_id%TYPE)
    RETURN T_PLACE_TABLE PIPELINED;
  FUNCTION GET_PLACES
    RETURN T_PLACE_TABLE PIPELINED;
END;
/

