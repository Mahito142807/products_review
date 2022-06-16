
    create table item (
       id bigint not null auto_increment,
        item_name varchar(255),
        id_review bigint,
        id_user bigint,
        primary key (id)
    ) engine=InnoDB;

    create table product (
       id_product bigint not null,
        primary key (id_product)
    ) engine=InnoDB;

    create table review (
       id_review bigint not null auto_increment,
        review double precision,
        primary key (id_review)
    ) engine=InnoDB;

    create table user (
       id_user bigint not null auto_increment,
        first_name varchar(255),
        last_name varchar(255),
        user_name varchar(255),
        primary key (id_user)
    ) engine=InnoDB;

    alter table item 
       add constraint FKcyj0h5296da1q3fqhap0ldso5 
       foreign key (id_review) 
       references review (id_review);

    alter table item 
       add constraint FKihnm8gmsybv5ahjfcs80kfc11 
       foreign key (id_user) 
       references user (id_user);
