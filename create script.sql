-- Create database hotel
-- There is no explicit "CREATE DATABASE" statement in PostgreSQL if you are already connected to a database.

-- Switch to the hotel database
-- No equivalent statement needed in PostgreSQL.

CREATE TABLE Client
(
    id_client SERIAL PRIMARY KEY,
    fio       VARCHAR(50) NOT NULL,
    passport  VARCHAR(50) NOT NULL
);

CREATE TABLE Comfort
(
    id_comfort  SERIAL PRIMARY KEY,
    description VARCHAR(50)
);

CREATE TABLE Room
(
    number_room SMALLINT PRIMARY KEY,
    capacity    SMALLINT NOT NULL,
    ref_comfort INTEGER  NOT NULL,
    price       FLOAT
);

ALTER TABLE Room
    ADD CONSTRAINT FK_Room_Comfort FOREIGN KEY (ref_comfort) REFERENCES Comfort (id_comfort);

CREATE TABLE Renting
(
    ref_client SMALLINT NOT NULL,
    ref_room   SMALLINT NOT NULL,
    date_in    DATE     NOT NULL,
    date_out   DATE,
    PRIMARY KEY (ref_client, ref_room, date_in)
);

ALTER TABLE Renting
    ADD CONSTRAINT FK_Renting_Client FOREIGN KEY (ref_client) REFERENCES Client (id_client),
    ADD CONSTRAINT FK_Renting_Room FOREIGN KEY (ref_room) REFERENCES Room (number_room);
