CREATE TABLE costumer (
	c_id INTEGER PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	phone BIGINT NOT NULL
	)

INSERT INTO costumer VALUES(1, "Chetan Gupta", 7042869567);
INSERT INTO costumer VALUES(2, "Anmol Singh", 9801234523);
INSERT INTO costumer VALUES(3, "Deepanshu", 9835253747);
INSERT INTO costumer VALUES(4, "Siddharth Nayyar", 9837251537);
INSERT INTO costumer VALUES(5, "Neeraj Verma", 8798973546);

CREATE TABLE transactions (
	t_id INTEGER PRIMARY KEY,
	from_c_id INTEGER ,
	to_c_id INTEGER,
	amount INTEGER NOT NULL,
	t_timestamp DATE,
	FOREIGN KEY(from_c_id) REFERENCES costumer(c_id),
	FOREIGN KEY(to_c_id) REFERENCES costumer(c_id)
);

INSERT INTO transactions VALUES (1, 1, 2, 100, "2017-01-10");
INSERT INTO transactions VALUES (2, 2, 1, 1000, "2017-01-11");
INSERT INTO transactions VALUES (3, 2, 4, 50, "2017-01-11");
INSERT INTO transactions VALUES (4, 5, 3, 120, "2017-01-09");
INSERT INTO transactions VALUES (5, 4, 1, 1300, "2017-01-11");
INSERT INTO transactions VALUES (6, 1, 2, 15, "2017-01-11");
INSERT INTO transactions VALUES (7, 3, 2, 10, "2017-01-11");

CREATE TABLE wallet (
	w_id INTEGER PRIMARY KEY,
	c_id INTEGER,
	balance INTEGER NOT NULL,
	kyc BOOLEAN,
	FOREIGN KEY(c_id) REFERENCES costumer(c_id)
	);

INSERT INTO wallet VALUES(1, 1, 10000, "yes");
INSERT INTO wallet VALUES(2, 2, 10000, "yes");
INSERT INTO wallet VALUES(3, 3, 10000, "no");
INSERT INTO wallet VALUES(4, 4, 10000, "yes");
INSERT INTO wallet VALUES(5, 5, 10000, "no");
