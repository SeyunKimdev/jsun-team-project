use rewrite;
create table tbl_review(
   review_id int unsigned auto_increment primary key,
   review_title varchar(500) not null,
   review_content varchar(500) not null,
   review_register_date datetime default now(),
   review_update_date datetime default now(),
   review_like_count int unsigned default 0,
   review_read_count int unsigned default 0,
   review_image varchar(500),
   review_score int not null default 1,
   member_id int unsigned not null,
   constraint fk_review_member foreign key(member_id) 
   references tbl_member(member_id) on delete cascade
);
create view view_review as
(
   select review_id, review_title, review_content, review_register_date, 
   review_update_date, review_like_count, review_read_count, review_image, member_nickname
   from tbl_member m join tbl_review r
   on m.member_id = r.member_id
);