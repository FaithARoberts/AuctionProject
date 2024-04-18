-- Replace this by the SQL code needed to create your database

/*CREATE TABLE USERS
    (USERNAME VARCHAR(10) CONSTRAINT PK_DEPT PRIMARY KEY,
	NAME VARCHAR(50) ,
	CITY VARCHAR(20));
INSERT INTO user_seller VALUES ('ssmith','Scott Smith','New York');
INSERT INTO USERS VALUES ('aking','Allen King','Dallas');
INSERT INTO USERS VALUES ('jford','Jones Ford','Chicago');
INSERT INTO USERS VALUES ('mmiller','Martin Miller','Boston');

CREATE TABLE individual_customers (
	name		 BIGINT,
	marital_status CHAR(255),
	gender	 CHAR(255),
	address	 VARCHAR(512),
	phone		 BIGINT,
	id		 BOOL,
	PRIMARY KEY(name)
);*/

CREATE TABLE user_seller (
	user_id	 INTEGER,
	username VARCHAR(512) NOT NULL,
	password VARCHAR(512) NOT NULL,
	//EMAIL ADDED
	email VARCHAR(512) NOT NULL,
	PRIMARY KEY(user_id)
INSERT INTO user_seller VALUES ('JohnPaul','Jp','jp200','jp@gmail.com');
INSERT INTO user_seller VALUES ('AnneWand','Aw','aw2003','aw@gmail.com');
);

CREATE TABLE message (
	message_id		 INTEGER,
	content		 TEXT NOT NULL,
	message_type	 BOOL NOT NULL,
	message_time	 TIMESTAMP NOT NULL,
	user_seller_user_id INTEGER NOT NULL,
	PRIMARY KEY(message_id)
);

CREATE TABLE item (
	item_id	 INTEGER,
	code	 VARCHAR(512) NOT NULL,
	description TEXT NOT NULL,
	PRIMARY KEY(item_id)
);

CREATE TABLE bid (
	bid_id		 INTEGER,
	bid_amount		 FLOAT(8) NOT NULL,
	bid_time		 TIMESTAMP NOT NULL,
	auction_auction_id	 INTEGER,
	user_seller_user_id INTEGER,
	PRIMARY KEY(bid_id,auction_auction_id,user_seller_user_id)
);

CREATE TABLE auction (
	auction_id		 INTEGER,
	title		 VARCHAR(512) NOT NULL,
	description	 TEXT NOT NULL,
	min_price		 FLOAT(8) NOT NULL,
	end_date_time	 TIMESTAMP NOT NULL,
	status		 VARCHAR(512) NOT NULL,
	item_item_id	 INTEGER NOT NULL,
	user_seller_user_id INTEGER NOT NULL,
	PRIMARY KEY(auction_id)
);

CREATE TABLE auction_message (
	auction_auction_id INTEGER NOT NULL,
	message_message_id INTEGER,
	PRIMARY KEY(message_message_id)
);

ALTER TABLE user_seller ADD UNIQUE (username);
ALTER TABLE message ADD CONSTRAINT message_fk1 FOREIGN KEY (user_seller_user_id) REFERENCES user_seller(user_id);
ALTER TABLE item ADD UNIQUE (code);
ALTER TABLE bid ADD CONSTRAINT bid_fk1 FOREIGN KEY (auction_auction_id) REFERENCES auction(auction_id);
ALTER TABLE bid ADD CONSTRAINT bid_fk2 FOREIGN KEY (user_seller_user_id) REFERENCES user_seller(user_id);
ALTER TABLE auction ADD CONSTRAINT auction_fk1 FOREIGN KEY (item_item_id) REFERENCES item(item_id);
ALTER TABLE auction ADD CONSTRAINT auction_fk2 FOREIGN KEY (user_seller_user_id) REFERENCES user_seller(user_id);
ALTER TABLE auction_message ADD CONSTRAINT auction_message_fk1 FOREIGN KEY (auction_auction_id) REFERENCES auction(auction_id);
ALTER TABLE auction_message ADD CONSTRAINT auction_message_fk2 FOREIGN KEY (message_message_id) REFERENCES message(message_id);



