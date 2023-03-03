use jsun;
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
INSERT INTO tbl_coin
(coin_content, coin_register_date, coin_update_date, coin_count, member_id)
VALUES('', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 0, 0);
UPDATE tbl_coin
SET coin_content='', coin_register_date=CURRENT_TIMESTAMP, coin_update_date=CURRENT_TIMESTAMP, coin_count=0, member_id=0
WHERE coin_id=0;