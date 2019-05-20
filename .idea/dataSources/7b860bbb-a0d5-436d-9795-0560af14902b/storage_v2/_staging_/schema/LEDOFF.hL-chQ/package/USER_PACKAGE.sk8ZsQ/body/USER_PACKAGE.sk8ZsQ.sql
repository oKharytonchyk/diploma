CREATE or replace PACKAGE BODY USER_PACKAGE AS
  FUNCTION LOG_IN(LOGIN IN SuperUser.user_login%TYPE, PASSWORD IN SuperUser.user_password%TYPE)
    RETURN NUMBER AS
    rec NUMBER(1);
    BEGIN
      SELECT COUNT(*) INTO rec FROM SuperUser WHERE user_login = LOGIN
                                                AND user_password = PASSWORD;
      RETURN (rec);
    END;

  procedure REGISTER(LOGIN IN SuperUser.user_login%TYPE, PASSWORD IN SuperUser.user_password%TYPE,
                     EMAIL IN SuperUser.user_email%TYPE) as
    BEGIN
      INSERT INTO SuperUser (user_login, user_password, user_email) VALUES (LOGIN, PASSWORD, EMAIL);
    END;
END USER_PACKAGE
  /