insert into `user`
(login, password, city, country, street,postal_code, contact, role_id)
VALUES
    ('Basia', 1234, 'Warsaw', 'Poland', 'Mango', '02-200', 623145312,
     (select id from `role` where name ='Użytkownik'));


insert into `user`
(login, password, city, country, street,postal_code, contact, role_id)
VALUES
    ('Basia2', 4321, 'Krakow', 'Poland', 'Cytryna', '05-250', 111222333,
     (select id from `role` where name ='Administator'));