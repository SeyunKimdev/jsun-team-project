use rewrite;
create table tbl_feed(
   feed_id int unsigned auto_increment primary key,
   feed_content varchar(500) not null,
   feed_register_date datetime default now(),
   feed_update_date datetime default now(),
   feed_like_count int unsigned default 0,
   feed_read_count int unsigned default 0,
   feed_hash_tag varchar(500) not null,
   feed_image varchar(500), 
   member_id int unsigned not null,
   constraint fk_feed_member foreign key(member_id) 
   references tbl_member(member_id) on delete cascade
);
create view view_feed_profile as
(
	select feed_id, feed_content, feed_register_date, 
   feed_update_date, feed_like_count, feed_read_count, feed_hash_tag, feed_image, member_nickname
   member_name, profile_location, profile_married
   from tbl_member m join tbl_profile p on m.member_id = p.member_id
   join tbl_feed f on m.member_id = f.member_id 
);
