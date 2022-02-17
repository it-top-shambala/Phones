CREATE TABLE tab_trademarks
(
    id   INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    name TEXT    NOT NULL
);

CREATE TABLE tab_phones
(
    id           INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    id_trademark INTEGER NOT NULL,
    model        TEXT    NOT NULL,
    FOREIGN KEY (id_trademark) REFERENCES tab_trademarks(id) 
        ON DELETE NO ACTION 
        ON UPDATE NO ACTION 
);

CREATE TABLE tab_prices
(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    id_phone INTEGER NOT NULL,
    price REAL NOT NULL,
    FOREIGN KEY (id_phone) REFERENCES tab_phones(id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION                     
);

INSERT INTO tab_trademarks (name)
VALUES ('Apple'),
       ('Samsung'),
       ('Xiaomi');

INSERT INTO tab_phones (id_trademark, model)
VALUES (1, 'iPhone 12'),
       (1, 'iPhone 2'),
       (2, 'Galaxy A50'),
       (2, 'Galaxy A60'),
       (3, 'Redmi 8A'),
       (3, 'Redmi 6A');

INSERT INTO tab_prices (id_phone, price)
VALUES (1, 120000),
       (2, 1000),
       (3, 12000),
       (4, 15000),
       (5, 10000),
       (6, 4000);