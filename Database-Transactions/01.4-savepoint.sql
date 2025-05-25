-- INSERT INTO customers(
--     first_name,
--     last_name,
--     email
-- )
-- VALUES(
--     'Baron',
--     'Munhauzen',
--     'b.m@gmail.bg'
-- );

INSERT INTO orders(
    amount_billed,
    customer_id
)
VALUES(
    9.99,
    30
);

-- SAVEPOINT save_1;