/*----------------client---------------*/
INSERT INTO "client" ("fio", "passport")
VALUES ('Петренко', 'ХА 457863'),
       ('Григоренко', 'ЕА 563698'),
       ('Костріков', 'ВИ 454563');

/*-----------comfort------------------*/
INSERT INTO "comfort" ("description")
VALUES ('економ'),
       ('стандарт'),
       ('полу-люкс'),
       ('люкс'),
       ('сімейний');

/*-----------Room------------------*/
INSERT INTO "room" ("number_room", "capacity", "ref_comfort", "price")
VALUES (101, 3, 2, 80),
       (102, 2, 3, 120),
       (103, 2, 3, 120),
       (104, 2, 3, 200),
       (105, 1, 4, 300);

/*---------------Renting-------------*/
INSERT INTO "renting" ("ref_client", "ref_room", "date_in", "date_out")
VALUES (1, 102, '2023-02-12', NULL),
       (2, 103, '2023-01-05', '2023-01-08'),
       (3, 105, '2023-02-10', NULL);
