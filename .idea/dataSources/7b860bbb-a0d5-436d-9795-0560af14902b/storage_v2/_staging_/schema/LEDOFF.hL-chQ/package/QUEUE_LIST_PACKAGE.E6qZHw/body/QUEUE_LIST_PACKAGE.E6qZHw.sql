create PACKAGE BODY QUEUE_LIST_PACKAGE AS
  PROCEDURE ADD_QUEUE(notification_status   IN Queue.notification_status%TYPE,
                      user_login            IN Queue.user_login%TYPE,
                      place_id              IN Queue.place_id%TYPE,
                      event_name            IN Queue.event_name%TYPE,
                      date_creation_event   IN Queue.date_creation_event%TYPE,
                      date_request_creation IN Queue.date_request_creation%TYPE,
                      wishlist_status       IN Queue.wishlist_status%TYPE) AS
    BEGIN
      INSERT INTO Queue (notification_status,
                         user_login,
                         place_id,
                         event_name,
                         date_creation_event,
                         date_request_creation,
                         wishlist_status)
      VALUES (notification_status,
              user_login,
              place_id,
              event_name,
              date_creation_event,
              date_request_creation,
              wishlist_status);
    END;
  FUNCTION GET_QUEUE_LIST
    RETURN T_LIST_TABLE PIPELINED AS
    CURSOR MY_CURSOR IS
      SELECT *
      FROM Queue;
    BEGIN
      FOR REC IN MY_CURSOR
      LOOP
        PIPE ROW (REC);
      END LOOP;
    END;
END QUEUE_LIST_PACKAGE;
/

