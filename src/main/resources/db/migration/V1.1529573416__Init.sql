CREATE TABLE users
(
    id              bigint(20) NOT NULL AUTO_INCREMENT,
    created_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    username        VARCHAR(255) UNIQUE,
    password        VARCHAR(255),
#     e_mail          VARCHAR(255)NOT NULL ,
#     lastName        VARCHAR(255)NOT NULL ,
#     phoneNumber     VARCHAR(255)NOT NULL ,
    role       INT,
    PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

insert into users (created_at, username, password, role)
VALUES (now(),
        'admin@admin.com',
        '$2a$08$AJ5Txa3lIqxHiO.VfupTC.mJFqqtNkr3hRDe8M.CRofZFHKiF4z6K',
        0);

