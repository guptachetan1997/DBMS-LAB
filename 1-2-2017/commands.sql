SELECT sender.name 'Sender', reciever.name 'Reciever', amount, t_timestamp
FROM transactions,costumer as sender,costumer as reciever
WHERE sender.c_id=from_c_id AND reciever.c_id=to_c_id;


CREATE TRIGGER transaction_balance_change
AFTER INSERT
ON transactions
FOR EACH ROW
BEGIN
	SELECT * FROM transactions
END;


DELIMITER ;;
CREATE TRIGGER transaction_balance_change
AFTER INSERT
ON transactions FOR EACH ROW
BEGIN
UPDATE wallet SET balance=balance-NEW.amount WHERE c_id=NEW.from_c_id;
UPDATE wallet SET balance=balance+NEW.amount WHERE c_id=NEW.to_c_id;
END;;

INSERT INTO transactions(t_id,from_c_id,to_c_id,amount,t_timestamp) VALUES (10, 1, 2, 100, "2017-02-01");
INSERT INTO transactions(t_id,from_c_id,to_c_id,amount,t_timestamp) VALUES (11, 5, 3, 1500, "2017-02-01");
SELECT name,balance FROM wallet,costumer WHERE wallet.c_id=costumer.c_id;


