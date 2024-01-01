CREATE TABLE
    if not exists items (
        id int,
        year int,
        code char(8),
        url VARCHAR(255),
        primary key (id)
    )