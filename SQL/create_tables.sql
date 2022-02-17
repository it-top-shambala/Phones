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