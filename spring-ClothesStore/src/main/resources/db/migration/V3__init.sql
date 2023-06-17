insert into `user`
(login, password, city, country, street,postal_code, contact, role_id)
VALUES
    ('Basia', '$2y$10$YHYCo/9JqmFNJKMDyMRTAOmDhmfRKYWahE4lCxz0kahRLCCB0ymW.', 'Warsaw', 'Poland', 'Mango', '02-200', 623145312,
     (select id from `role` where name ='Użytkownik'));


insert into `user`
(login, password, city, country, street,postal_code, contact, role_id)
VALUES
    ('Basia2', '$2y$10$YHYCo/9JqmFNJKMDyMRTAOmDhmfRKYWahE4lCxz0kahRLCCB0ymW.', 'Krakow', 'Poland', 'Cytryna', '05-250', 111222333,
     (select id from `role` where name ='Administrator'));

insert into `user`
(login, password, city, country, street,postal_code, contact, role_id)
VALUES
    ('magda', '$2y$10$BbIVQ1VCd0cQnTxrMd7PJ.R9tuZu.psrYuPiyxofld7KzYnQ2KvnG', 'gdzies', 'Poland', 'baranek', '05-250', 111222333,
     (select id from `role` where name ='Administrator'));