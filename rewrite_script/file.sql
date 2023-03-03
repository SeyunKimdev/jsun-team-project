use rewrite;
create table tbl_file(
	file_id int unsigned auto_increment primary key,
	file_original_name varchar(500) not null,
	file_system_name varchar(500) not null,
	file_register_date date not null,
	member_id int unsigned not null,
	constraint fk_file_member foreign key(member_id)
	references tbl_member(member_id) on delete cascade
);