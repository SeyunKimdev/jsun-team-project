use jsun;
create table tbl_event(
	event_id int unsigned auto_increment primary key,
	event_kind varchar(500),
	event_status char(1) default 'n',
	member_id int unsigned not null,
	constraint fk_event_member foreign key(member_id) 
	references tbl_member(member_id) on delete cascade
);
INSERT INTO tbl_event
(event_kind, event_status, member_id)
VALUES('', 'n', 0);
UPDATE tbl_event
SET event_kind='', event_status='n', member_id=0
WHERE event_id=0;