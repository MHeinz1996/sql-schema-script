CREATE TABLE users (
    id serial PRIMARY KEY,
    username TEXT UNIQUE,
    password TEXT,
    line_1 TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT,
    credit_card TEXT
);

CREATE TABLE restaurants (
    id serial PRIMARY KEY,
    name TEXT,
    menu INTEGER REFERENCES menu_items(id),
    line_1 TEXT,
    city TEXT,
    state TEXT,
    zip_code TEXT
);

CREATE TABLE menu_items (
    id serial PRIMARY KEY,
    dish TEXT,
    price DECIMAL(2)
);

CREATE TABLE orders (
    id serial PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    restaurant_id INTEGER REFERENCES restaurants(id)
);