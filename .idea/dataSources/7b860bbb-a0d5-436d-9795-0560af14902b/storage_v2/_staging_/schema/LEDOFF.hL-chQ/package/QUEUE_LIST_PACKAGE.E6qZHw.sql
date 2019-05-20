create PACKAGE QUEUE_LIST_PACKAGE AS
  TYPE _LIST IS RECORD (
  notification_status VARCHAR2(20),
  user_login VARCHAR2(20),
  place_id NUMBER,
  event_name VARCHAR2(50),
  date_creation_event DATE,
  date_request_creation DATE,
  wishlist_status VARCHAR2(10)
  );
  TYPE T_LIST_TABLE IS TABLE OF T_LIST;
  PROCEDURE ADD_QUEUE(notification_status   IN Queue.notification_status%TYPE,
                      user_login            IN Queue.user_login%TYPE,
                      place_id              IN Queue.place_id%TYPE,
                      event_name            IN Queue.event_name%TYPE,
                      date_creation_event   IN Queue.date_creation_event%TYPE,
                      date_request_creation IN Queue.date_request_creation%TYPE,
                      wishlist_status       IN Queue.wishlist_status%TYPE
  );
  FUNCTION GET_QUEUE_LIST
    RETURN T_LIST_TABLE PIPELINED;
END;
/

