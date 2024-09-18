CREATE TABLE IF NOT EXISTS orders (
    id varchar(255) PRIMARY KEY,
    price numeric(10, 2) NOT NULL,
    tax numeric(10, 2) NOT NULL,
    final_price numeric(10, 2) NOT NULL
);
