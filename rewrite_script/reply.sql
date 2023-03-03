use rewrite;
create table tbl_reply(
	reply_id int unsigned auto_increment primary key,
	reply_content varchar(500) not null,
	reply_register_date datetime default now(),
	reply_update_date datetime default now(),
	reply_like_status char(1) default 'n',
	member_id int unsigned not null,
	feed_id int unsigned not null,
   constraint fk_reply_member foreign key(member_id)
   references tbl_member(member_id),
   constraint fk_reply_feed foreign key(feed_id)
   references tbl_feed(feed_id) on delete cascade
);
