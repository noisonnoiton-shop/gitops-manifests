--sequence
-- select nextval(event_seq);
-- select nextval(event_seq);
-- select nextval(event_seq);
-- select nextval(event_seq);
-- select nextval(event_seq);
-- select nextval(event_seq);

INSERT INTO payment
(account_id, order_id, payment_method, payment_detail1, payment_detail2, payment_detail3, price, paid, active, created_at)
VALUES
(1,1,'bank','kb','123123123123','',90000,'paid','active',NOW());

INSERT INTO payment_event
(id, payment_id, domain, event_type, payload, tx_id, created_at)
VALUES
(1,1,'payment','PaymentCreated'
,'{"id":1,"accountId":1,"orderId":1,"paymentMethod":"bank","paymentDetail1":"kb","paymentDetail2":"123123123123","paymentDetail3":"","price":90000,"paid":"paid","active":"active"}'
,'tx123123128'
,NOW());