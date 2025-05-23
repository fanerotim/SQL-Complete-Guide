CREATE TABLE employers(
    company_name VARCHAR(250),
    company_address VARCHAR(200),
    yearly_revenue NUMERIC(5, 2),
    is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversations (
    user_name VARCHAR(250),
    employer_name VARCHAR(200),
    message TEXT,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);