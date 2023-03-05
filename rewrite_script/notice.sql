use rewrite;
create table tbl_notice(
	notice_id int unsigned auto_increment primary key,
	notice_title varchar(500),
	notice_content varchar(500),
	notice_admin varchar(500) unique not null,
	notice_register_date datetime default now()
);