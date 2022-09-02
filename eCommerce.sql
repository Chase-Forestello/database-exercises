use chase;

CREATE TABLE users
(
    id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(50),
    password VARCHAR(50)  NOT NULL,
    admin    boolean,
    PRIMARY KEY (id)
);

CREATE TABLE products
(
    id            INT UNSIGNED NOT NULL AUTO_INCREMENT,
    product_name  VARCHAR(50)  NOT NULL,
    product_price VARCHAR(50)  NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE user_orders
(
    id         INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id    INT          NOT NULL,
    product_id INT          NOT NULL,
    quantity   INT,
    FOREIGN KEY (product_id) REFERENCES products (id),
    FOREIGN KEY (user_id) REFERENCES users (id),
    PRIMARY KEY (id)
);

CREATE TABLE reviews
(
    id         INT UNSIGNED     NOT NULL AUTO_INCREMENT,
    user_id    INTEGER UNSIGNED NOT NULL,
    product_id INTEGER UNSIGNED NOT NULL,
    content    TEXT,
    FOREIGN KEY (user_id) REFERENCES users (id),
    foreign key (product_id) REFERENCES products (id),
    PRIMARY KEY (id)
);

CREATE TABLE all_orders
(
    id         INT UNSIGNED     NOT NULL AUTO_INCREMENT,
    user_id    INTEGER UNSIGNED NOT NULL,
    order_date DATE             NULL,
    foreign key (user_id) REFERENCES users (id),
    PRIMARY KEY (id)
);

INSERT INTO users(username, password, admin)
VALUES ('John', '123', true),
       ('Bob', '321', false),
       ('Tim', '432', false),
       ('Jack', '132', true);

INSERT INTO products(product_name, product_price)
VALUES ('Shirt', '100'),
       ('Pant', '300'),
       ('Suit', '200'),
       ('Jacket', '500');

INSERT INTO user_orders(user_id, product_id, quantity)
VALUES (1, 1, 2),
       (1, 4, 1),
       (2, 1, 1),
       (3, 4, 3),
       (4, 1, 2),
       (3, 1, 1);

INSERT INTO all_orders(user_id, order_date)
VALUES (1, 2022-08-3),
       (2, 2022-08-7),
       (3, 2022-08-6),
       (4, 2022-08-5),
       (1, 2022-08-6),
       (3, 2022-08-8);

SELECT username, product_name
FROM users
join chase.user_orders uo on users.id = uo.user_id
join chase.products p on p.id = uo.product_id
where user_id = 1;
