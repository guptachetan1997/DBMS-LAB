ALTER TABLE costumer ADD age INTEGER;
ALTER TABLE costumer ADD email VARCHAR(10);

SELECT * FROM costumer;

ALTER TABLE costumer MODIFY email VARCHAR(50);
UPDATE costumer SET age=20,email='abc@xyz.com' WHERE name='Chetan Gupta';
UPDATE costumer SET age=21,email='abc123@xyz.com' WHERE name='Anmol Singh';
UPDATE costumer SET age=21,email='qwerty@xyz.com' WHERE name='Deepanshu';
UPDATE costumer SET age=21,email='asdfgh@xyz.com' WHERE name='Siddharth Nayyar';
UPDATE costumer SET age=20,email='zxcvb@xyz.com' WHERE name='Neeraj Verma';

SELECT * FROM costumer;

SELECT name,amount,t_timestamp FROM costumer,transactions WHERE from_c_id=c_id AND amount<100;

UPDATE wallet SET balance=50000,kyc=1 WHERE w_id=1;
UPDATE wallet SET balance=500 WHERE w_id=2;
UPDATE wallet SET balance=1200,kyc=1 WHERE w_id=3;
UPDATE wallet SET balance=1000 WHERE w_id=4;
UPDATE wallet SET balance=3100 WHERE w_id=5;

SELECT * FROM wallet;
