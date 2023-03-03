use rewrite;
create table tbl_event(
	event_id int unsigned auto_increment primary key,
	event_kind varchar(500),
	event_status char(1) default 'n',
	member_id int unsigned not null,
	constraint fk_event_member foreign key(member_id) 
	references tbl_member(member_id) on delete cascade
);

create table tbl_event_file(
	file_id int unsigned auto_increment primary key,
	file_original_name varchar(500) not null,
	file_system_name varchar(500) not null,
	file_register_date date not null,
	event_id int unsigned,
	constraint fk_file_event foreign key(event_id) 
	references tbl_event(event_id) on delete cascade
);