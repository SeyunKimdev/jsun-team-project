use rewrite;
create table tbl_massage(
	massage_id int unsigned auto_increment primary key,
	massage_content varchar(500) not null,
	receiver_id int unsigned not null,
	sender_id int unsigned not null,
	constraint fk_massage_receiver_member foreign key(receiver_id) 
	references tbl_member(member_id) on delete cascade,
	constraint fk_massage_sender_member foreign key(sender_id) 
	references tbl_member(member_id) on delete cascade
);
