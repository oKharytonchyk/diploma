create PACKAGE USER_PACKAGE AS
  TYPE T_USER IS RECORD (
  user_login VARCHAR2(20),
  user_password VARCHAR2(20),
  user_email VARCHAR2(40)
  );

  TYPE T_USER_TABLE IS
    TABLE OF T_USER;

  FUNCTION LOG_IN(LOGIN    IN SuperUser.user_login%TYPE,
                  PASSWORD IN SuperUser.user_password%TYPE)
    RETURN number;
  PROCEDURE REGISTER(LOGIN    IN SuperUser.user_login%TYPE,
                     PASSWORD IN SuperUser.user_password%TYPE,
                     EMAIL    IN SuperUser.user_email%TYPE);
END;
/

