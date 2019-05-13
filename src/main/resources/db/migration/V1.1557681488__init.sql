alter table users
    add column  last_name    VARCHAR(255) not null ,
    add column  e_mail      VARCHAR(255) not null ,
    add column  phone_number varchar(255) not null ;

INSERT INTO  users (last_name, e_mail, phone_number) values ('zhuzupbekov', 'adikts@mail.ru', '+996509005533')

