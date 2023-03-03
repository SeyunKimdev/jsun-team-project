use rewrite;
create table tbl_coin(
	coin_id int unsigned auto_increment primary key,
	coin_content varchar(500) not null,
	coin_register_date datetime default now(),
	coin_update_date datetime default now(),
	coin_count int unsigned default 0,
	member_id int unsigned not null,
	constraint fk_coin_member foreign key(member_id)
	references tbl_member(member_id) on delete cascade
);
