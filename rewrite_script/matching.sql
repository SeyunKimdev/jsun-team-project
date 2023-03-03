use jsun;
create table tbl_matching(
	matching_id int unsigned auto_increment primary key,
	matching_status char(1) default 'n',
	tempter_id int unsigned not null,
	attracter_id int unsigned not null,
	matching_register_date datetime default now(),
	constraint fk_matching_tempter foreign key(tempter_id) 
	references tbl_member(member_id) on delete cascade,
	constraint fk_matching_attracter foreign key(attracter_id) 
	references tbl_member(member_id) on delete cascade
);
INSERT INTO tbl_matching
(matching_status, tempter_id, attracter_id, matching_register_date)
VALUES('n', 0, 0, CURRENT_TIMESTAMP);