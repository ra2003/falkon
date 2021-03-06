-- Falkon browsedata.db

-- Tables
CREATE TABLE autofill (
    id INTEGER PRIMARY KEY,
    server TEXT NOT NULL,
    data TEXT,
    password TEXT,
    username TEXT,
    last_used INTEGER DEFAULT 0 NOT NULL
);
CREATE INDEX autofill_serverindex ON autofill (server);

CREATE TABLE autofill_encrypted (
    id INTEGER PRIMARY KEY,
    server TEXT NOT NULL,
    data_encrypted TEXT,
    password_encrypted TEXT,
    username_encrypted TEXT,
    last_used INTEGER DEFAULT 0 NOT NULL
);
CREATE INDEX autofill_encrypted_serverindex ON autofill_encrypted (server);

CREATE TABLE autofill_exceptions (
    id INTEGER PRIMARY KEY,
    server TEXT NOT NULL
);
CREATE INDEX autofill_exception_serverindex ON autofill_exceptions (server);

CREATE TABLE history (
    id INTEGER PRIMARY KEY,
    url TEXT NOT NULL,
    title TEXT,
    date INTEGER DEFAULT 0 NOT NULL,
    count INTEGER DEFAULT 0 NOT NULL
);
CREATE INDEX history_titleindex ON history (title);
CREATE UNIQUE INDEX history_urluniqueindex ON history (url);

CREATE TABLE search_engines (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    url TEXT,
    icon BLOB,
    shortcut TEXT,
    suggestionsUrl TEXT,
    suggestionsParameters TEXT,
    postData TEXT
);

CREATE TABLE icons (
    id INTEGER PRIMARY KEY,
    url TEXT NOT NULL,
    icon BLOB
);
CREATE UNIQUE INDEX icons_urluniqueindex ON icons (url);

-- Data
