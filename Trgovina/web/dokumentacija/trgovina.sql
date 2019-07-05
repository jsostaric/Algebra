drop database if exists trgovina;
create database trgovina default character set utf8;
use trgovina;

create table korisnik(
id int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
email varchar(50) not null unique,
lozinka varchar(50) not null,
adresa varchar(50),
uloga int not null default 1
);


create table kategorija(
id int not null primary key auto_increment,
ime varchar(50) not null
);

create table proizvod(
id int not null primary key auto_increment,
ime varchar(50) not null,
kolicina int not null,
cijena decimal(6,2) not null,
opis varchar(255),
brojIgraca varchar(50) default "2-5 players",
kategorija int not null
);

create table povijest(
id int not null primary key auto_increment,
korisnik int not null,
proizvod int not null,
kol int not null,
vrijeme datetime not null,
nacinpl int not null
);

create table prijava(
id int not null primary key auto_increment,
korisnik int not null,
vrijeme datetime not null,
nacinprijave int not null default 0
);


alter table proizvod add foreign key(kategorija) references kategorija(id);


insert into kategorija(ime) values("CCG"),("Boardgame"),("TTRPG"),("Miniatures"),("Accessories");

insert into proizvod(ime,kolicina,cijena,kategorija) values("Lords Of Waterdeep",10,369.99,2),
                                                            ("Commander Deck",23,124.99,1),
                                                            ("Xanathars' Guide To Everything",5,319.99,3),
                                                            ("One Deck Dungeon",32,159.99,1);


															
insert into korisnik(ime,prezime,email,lozinka,uloga) values("pero","peric","pero@gmail.com","123",1),
                                                        ("jurica","šoštarić","jurica@gmail.com","123",2);							