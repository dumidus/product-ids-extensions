DROP TABLE IF EXISTS IDN_PASSWORD_HISTORY_DATA;
CREATE SEQUENCE IDN_PASSWORD_HISTORY_DATA_PK_SEQ;
CREATE TABLE IDN_PASSWORD_HISTORY_DATA (
  ID INTEGER DEFAULT NEXTVAL('IDN_PASSWORD_HISTORY_DATA_PK_SEQ'),
  USER_NAME   VARCHAR(255) NOT NULL,
  USER_DOMAIN VARCHAR(255) NOT NULL,
  TENANT_ID   INTEGER DEFAULT -1,
  SALT_VALUE  VARCHAR(255),
  HASH        VARCHAR(255) NOT NULL,
  TIME_CREATED TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (ID),
  UNIQUE (USER_NAME,USER_DOMAIN,TENANT_ID,SALT_VALUE,HASH),
);
