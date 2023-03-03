use jsun;
create table tbl_file(
	file_id int unsigned auto_increment primary key,
	file_original_name varchar(500) not null,
	file_system_name varchar(500) not null,
	file_register_date date not null,
	member_id int unsigned not null,
	constraint fk_file_member foreign key(member_id)
	references tbl_member(member_id) on delete cascade
);
INSERT INTO tbl_file
(file_original_name, file_system_name, file_register_date, member_id)
VALUES('', '', '', 0);