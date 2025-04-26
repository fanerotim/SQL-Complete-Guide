-- INSERT INTO sales (
--     customer_name,
--     product_name,
--     volume
-- ) 
-- VALUES(
--     'Ivan Petrov',
--     'Book',
--     1
-- );

INSERT INTO sales (
        date_fulfilled,
        customer_name,
        product_name,
        volume,
        is_recurring,
        is_disputed
    )
VALUES(
    NULL,
    'Learning Inc',
    'Course Bundle',
    4889.62,
    FALSE,
    FALSE
), (
    '2025-04-26',
    'Big Oil Inc',
    'Trucks',
    400000.0,
    FALSE,
    TRUE
);