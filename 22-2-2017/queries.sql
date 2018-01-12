SELECT * FROM costumer WHERE name LIKE "%e%";


SELECT sender.name 'Sender', reciever.name 'Reciever', amount, t_timestamp
FROM transactions,costumer as sender,costumer as reciever
WHERE sender.c_id=from_c_id AND reciever.c_id=to_c_id;


SELECT * FROM transactions WHERE t_timestamp BETWEEN "2017-02-01" AND "2017-02-28";


SELECT * FROM costumer WHERE age IN (17,18,20);


SELECT name,balance from costumer JOIN wallet on costumer.c_id = wallet.c_id;



