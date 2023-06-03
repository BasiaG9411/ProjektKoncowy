insert into brand(name) values ('Zara');
insert into brand(name) values ('Nike');
insert into brand(name) values ('4F');
insert into brand(name) values ('Big Star');

insert into category(name) values ('Męskie');
insert into category(name) values ('Damskie');

insert into `role` (name) values ('Użytkownik');
insert into `role` (name) values ('Administrator');

insert into product (product_name, description, price, category_id, brand_id)
values
    ('T-Shirt', 'bawełniana koszulka' , 100 ,
    (select id from category where name='Męskie'),
    (select id from brand where name='4F'));

insert into product (product_name, description, logo,price, category_id, brand_id)
values
    ('Sukienka', 'wiosenna sukienka' , 'Wiosenna_Sukienka.jpg', 250 ,
     (select id from category where name='Damskie'),
     (select id from brand where name='Zara'));

insert into product (product_name, description, price, category_id, brand_id)
values
    ('Spodnie', 'spodnie sportowe' , 150 ,
     (select id from category where name='Damskie'),
     (select id from brand where name='4F'));

insert into product (product_name, description, price, category_id, brand_id)
values
    ('Spodnie', 'spodnie jeansowe' , 350 ,
     (select id from category where name='Damskie'),
     (select id from brand where name='Big Star'));

insert into product (product_name, description, price, category_id, brand_id)
values
    ('Kurtka', 'Kurtka wiatrówka' , 400 ,
     (select id from category where name='Męskie'),
     (select id from brand where name='4F'));

insert into product (product_name, description, price, category_id, brand_id)
values
    ('Buty', 'klapki' , 200 ,
     (select id from category where name='Damskie'),
     (select id from brand where name='Nike'));
insert into product (product_name, description, price, category_id, brand_id)
values
    ('Skarpety', 'skarpety stopki' , 50 ,
     (select id from category where name='Męskie'),
     (select id from brand where name='4F'));

insert into product (product_name, description, price, category_id, brand_id)
values
    ('Spodnie', 'legginsy' , 70 ,
     (select id from category where name='Damskie'),
     (select id from brand where name='Zara'));
insert into product (product_name, description, price, category_id, brand_id)
values
    ('Cardigan', 'cardigan' , 250 ,
     (select id from category where name='Damskie'),
     (select id from brand where name='Zara'));

insert into product (product_name, description, price, category_id, brand_id)
values
    ('Koszula', 'koszula z długim rękawem' , 200 ,
     (select id from category where name='Męskie'),
     (select id from brand where name='Zara'));
insert into product (product_name, description, price, category_id, brand_id)
values
    ('Dodatki', 'zestaw do stylizacji włosów' , 85 ,
     (select id from category where name='Damskie'),
     (select id from brand where name='Zara'));

insert into product (product_name, description, price, category_id, brand_id)
values
    ('Buty', 'buty sportowe' , 250 ,
     (select id from category where name='Damskie'),
     (select id from brand where name='Nike'));

insert into product (product_name, description, price, category_id, brand_id)
values
    ('Shorty', 'spodenki dresowe' , 70 ,
     (select id from category where name='Męskie'),
     (select id from brand where name='4F'));











