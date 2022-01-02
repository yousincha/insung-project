create table board2(
    num int not null primary key auto_increment,
    name2 varchar(50),
    passwd varchar(12),
    reg_date datetime ,
    readcount int default 0,
    ref int not null,
    re_step smallint not null,
    re_level smallint not null,
    content varchar(50) null
    );