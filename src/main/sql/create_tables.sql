drop table if exists user_message;
drop table if exists subscriber;

create table subscriber (
    id int unsigned not null auto_increment primary key,
    last_name varchar(40) not null,
    first_name varchar(40) not null,
    email varchar(80) not null,
    confirmed tinyint(1) not null,
    enabled tinyint(1) not null,
    ip_addr varchar(40) not null,
    date_created timestamp default 0,
    date_modified timestamp default current_timestamp on update current_timestamp,
    unique index subscriber_idx1 (email)
) engine = InnoDb;
alter table subscriber AUTO_INCREMENT = 500;

create table user_message (
    id int unsigned not null auto_increment primary key,
    name varchar(80) not null,
    email varchar(80) not null,
    message_text text not null,
    ip_addr varchar(40) not null,
    accept_language varchar(255) not null,
    referer varchar(255) default null,
    user_agent varchar(255) not null,
    date_created timestamp default 0,
    date_modified timestamp default current_timestamp on update current_timestamp
) engine = InnoDB;
