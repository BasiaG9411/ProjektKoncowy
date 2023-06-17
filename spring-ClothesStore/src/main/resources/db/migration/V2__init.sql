insert into brand(name) values ('Zara');
insert into brand(name) values ('Nike');
insert into brand(name) values ('4F');
insert into brand(name) values ('Big Star');

insert into category(name) values ('Męskie');
insert into category(name) values ('Damskie');

insert into `role` (name) values ('Użytkownik');
insert into `role` (name) values ('Administrator');

insert into product (product_name, description, logo , price, category_id, brand_id)
values
    ('T-Shirt', 'bawełniana koszulka' , 'bawełniana koszulka.jpg' , 100 ,
    (select id from category where name='Męskie'),
    (select id from brand where name='4F'));

insert into product (product_name, description, logo,price, category_id, brand_id)
values
    ('Sukienka', 'wiosenna sukienka' , 'Wiosenna_Sukienka.jpg', 250 ,
     (select id from category where name='Damskie'),
     (select id from brand where name='Zara'));

insert into product (product_name, description, logo ,price, category_id, brand_id)
values
    ('Spodnie', 'spodnie sportowe' , 'spodnie sportowe.jpg' , 150 ,
     (select id from category where name='Damskie'),
     (select id from brand where name='4F'));

insert into product (product_name, description, logo ,price, category_id, brand_id)
values
    ('Jeansy', 'spodnie jeansowe' , 'spodnie jeansowe.jpg' , 350 ,
     (select id from category where name='Damskie'),
     (select id from brand where name='Big Star'));

insert into product (product_name, description,logo , price, category_id, brand_id)
values
    ('Kurtka', 'Kurtka wiatrówka' , 'kurtka wiatrowka.webp' , 400 ,
     (select id from category where name='Męskie'),
     (select id from brand where name='4F'));

insert into product (product_name, description, logo, price, category_id, brand_id)
values
    ('Buty', 'klapki' , 'klapki.png', 200 ,
     (select id from category where name='Damskie'),
     (select id from brand where name='Nike'));
insert into product (product_name, description, logo ,price, category_id, brand_id)
values
    ('Skarpety', 'skarpety stopki' , 'skarpety stopki.webp' , 50 ,
     (select id from category where name='Męskie'),
     (select id from brand where name='4F'));

insert into product (product_name, description,logo , price, category_id, brand_id)
values
    ('Legginsy', 'legginsy' , 'legginsy.jpg' , 70 ,
     (select id from category where name='Damskie'),
     (select id from brand where name='Zara'));
insert into product (product_name, description,logo , price, category_id, brand_id)
values
    ('Cardigan', 'cardigan' , 'cardigan.jpg' , 250 ,
     (select id from category where name='Damskie'),
     (select id from brand where name='Zara'));

insert into product (product_name, description, logo ,price, category_id, brand_id)
values
    ('Koszula', 'koszula z długim rękawem' , 't-shirt.png' ,200 ,
     (select id from category where name='Męskie'),
     (select id from brand where name='Zara'));
insert into product (product_name, description,logo , price, category_id, brand_id)
values
    ('Dodatki', 'zestaw do stylizacji włosów' , 'zestaw do stylizacji włosów.jpg' , 85 ,
     (select id from category where name='Damskie'),
     (select id from brand where name='Zara'));

insert into product (product_name, description,logo , price, category_id, brand_id)
values
    ('Buty', 'buty sportowe' , 'buty sportowe.jpg' , 250 ,
     (select id from category where name='Damskie'),
     (select id from brand where name='Nike'));

insert into product (product_name, description, logo ,price, category_id, brand_id)
values
    ('Shorty', 'spodenki dresowe' , 'spodenki dresowe.jpg' , 70 ,
     (select id from category where name='Męskie'),
     (select id from brand where name='4F'));











