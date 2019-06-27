drop database if exists LosFilm;
create database LosFilm default character set utf8;
use LosFilm;
 

/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
CREATE TABLE Zanr(
	id int NOT NULL primary key auto_increment,
	naziv nvarchar(50) NOT NULL
);

INSERT into Zanr (ID, Naziv) values (1, 'SF');
INSERT into Zanr (ID, Naziv) values (2, 'Komedija');
INSERT into Zanr (ID, Naziv) values (3, 'Triler');
INSERT into Zanr (ID, Naziv) values (4, 'Fantazija');
INSERT into Zanr (ID, Naziv) values (5, 'Crtić');
INSERT into Zanr (ID, Naziv) values (6, 'Drama');
INSERT into Zanr (ID, Naziv) values (7, 'Ljubić');

 
CREATE TABLE Mjesto(
	id int primary key NOT NULL auto_increment,
	PostanskiBroj int NOT NULL,
	Naziv varchar(50) NULL,
	Naselje varchar(50) NULL,
	Zupanija varchar(50) NULL 
);

CREATE TABLE Medij(
	ID int NOT NULL primary key auto_increment,
	Naziv nvarchar(100) NULL
);

 
CREATE TABLE Film(
	ID int NOT NULL primary key auto_increment,
	medij int NOT NULL,
	Naziv varchar(50) NOT NULL,
	Trajanje int NOT NULL,
	Reziser varchar(50) NULL,
	GlavniGlumci varchar(100) NULL,
	SporedniGlumci varchar(100) NULL,
	zanr int NOT NULL,
	KratkiOpis Longtext NULL
);

CREATE TABLE Clan(
	ID int NOT NULL primary key auto_increment,
	ImePrezime varchar(50) NOT NULL,
	Ulica varchar(50) NULL,
	KucniBroj varchar(10) NULL,
	mjesto int NULL,
	Telefon varchar(20) NULL
);

 
CREATE TABLE Posudba(
	film int NOT NULL,
	clan int NOT NULL,
	DatumPosudbe datetime(3) NOT NULL,
	DatumVracanja datetime(3) NULL
);


#dodavanje stranih ključeva

alter table clan add foreign key(mjesto) references mjesto(id);

alter table film add foreign key(medij) references medij(id);
alter table film add foreign key(zanr) references zanr(id);

alter table Posudba add foreign key(film) references film(id);
alter table Posudba add foreign key(clan) references clan(id);


# unos u tablicu mjesto
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (1, 10010, 'Veliko Polje', 'Zagreb-Sloboština', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (2, 10292, 'Vukovo Selo', 'Šenkovec', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (3, 10293, 'Vučilčevo', 'Dubravica', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (4, 10296, 'Vadina', 'Luka', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (5, 10314, 'Velika Hrastilnica', 'Križ', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (6, 10315, 'Vezišće', 'Novoselec', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (7, 10340, 'Vrbovečki Pavlovec', 'Vrbovec', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (8, 10340, 'Vrbovec', 'Vrbovec', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (9, 10345, 'Veliki Brezovec', 'Gradec', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (10, 10346, 'Vinkovec /dio/', 'Preseka', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (11, 10347, 'Valetić', 'Rakovec', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (12, 10347, 'Vrhovec', 'Rakovec', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (13, 10360, 'Vuger Selo', 'Sesvete', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (14, 10360, 'Vugrovec Donji', 'Sesvete', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (15, 10360, 'Vugrovec Gornji', 'Sesvete', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (16, 10362, 'Vurnovec', 'Kašina', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (17, 10370, 'Velika Ostrna', 'Dugo Selo', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (18, 10380, 'Velika Gora', 'Sveti Ivan Zelina', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (19, 10382, 'Vukovje Zelinsko', 'Donja Zelina', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (20, 10383, 'Vinkovec /dio/', 'Komin', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (21, 10408, 'Velika Mlaka', 'Velika Mlaka', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (22, 10410, 'Velika Kosnica', 'Velika Gorica', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (23, 10410, 'Velika Gorica', 'Velika Gorica', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (24, 10411, 'Veleševec', 'Orle', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (25, 10411, 'Vrbovo Posavsko', 'Orle', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (26, 10413, 'Velika Buna', 'Kravarsko', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (27, 10418, 'Vukomerić', 'Dubranec', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (28, 10419, 'Vukovina', 'Vukovina', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (29, 10430, 'Vrhovčak', 'Samobor', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (30, 10430, 'Velika Rakovica', 'Samobor', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (31, 10430, 'Vrbovec Samoborski', 'Samobor', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (32, 10430, 'Vratnik Samoborski', 'Samobor', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (33, 10430, 'Veliki Lipovec', 'Samobor', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (34, 10432, 'Velika Jazbina', 'Bregana', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (35, 10432, 'Višnjevac Podvrški', 'Bregana', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (36, 10450, 'Vlaškovec', 'Jastrebarsko', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (37, 10450, 'Volavje', 'Jastrebarsko', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (38, 10450, 'Vranov Dol', 'Jastrebarsko', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (39, 10451, 'Velika Jamnička', 'Pisarovina', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (40, 10454, 'Vukšin Šipak', 'Krašić', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (41, 10454, 'Vranjak Žumberački', 'Krašić', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (42, 10455, 'Vukovo Brdo', 'Kostanjevac', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (43, 10455, 'Vlašić Brdo', 'Kostanjevac', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (44, 10455, 'Veliki Vrh', 'Kostanjevac', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (45, 10456, 'Višći Vrh', 'Kalje', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (46, 10457, 'Visoće', 'Sošice', 'ZAGREBAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (47, 20216, 'Vodovađa', 'Dubravka', 'DUBROVAČKO-NERETVANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (48, 20218, 'Vitaljina', 'Pločice', 'DUBROVAČKO-NERETVANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (49, 20226, 'Velika Loza', 'Goveđari', 'DUBROVAČKO-NERETVANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (50, 20231, 'Visočani', 'Doli', 'DUBROVAČKO-NERETVANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (51, 20267, 'Viganj', 'Kućište', 'DUBROVAČKO-NERETVANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (52, 20270, 'Vela Luka', 'Vela Luka', 'DUBROVAČKO-NERETVANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (53, 20350, 'Vidonje', 'Metković', 'DUBROVAČKO-NERETVANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (54, 20352, 'Vid', 'Vid', 'DUBROVAČKO-NERETVANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (55, 20355, 'Vlaka/lij.ob.Male Neretve/', 'Opuzen', 'DUBROVAČKO-NERETVANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (56, 21202, 'Vučevica', 'Lećevica', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (57, 21206, 'Velika Milešina', 'Donje Ogorje', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (58, 21210, 'Vranjic', 'Solin', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (59, 21222, 'Vrsine', 'Marina', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (60, 21226, 'Vinišće', 'Vinišće', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (61, 21228, 'Vinovac', 'Blizna Donja', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (62, 21231, 'Veliki Bročanac', 'Klis', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (63, 21233, 'Vučipolje', 'Hrvace', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (64, 21236, 'Vinalić', 'Vrlika', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (65, 21236, 'Vrlika', 'Vrlika', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (66, 21240, 'Vojnić Sinjski', 'Trilj', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (67, 21240, 'Velić', 'Trilj', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (68, 21240, 'Vedrine', 'Trilj', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (69, 21242, 'Vrabač', 'Grab', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (70, 21243, 'Vinine', 'Ugljane', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (71, 21245, 'Vrpolje', 'Tijarica', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (72, 21245, 'Voštane', 'Tijarica', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (73, 21275, 'Vlaka', 'Dragljane', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (74, 21276, 'Višnjica', 'Vrgorac', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (75, 21276, 'Vina', 'Vrgorac', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (76, 21276, 'Vrgorac', 'Vrgorac', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (77, 21277, 'Veliki Prolog', 'Veliki Prolog', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (78, 21325, 'Veliko Brdo', 'Tučepi', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (79, 21450, 'Velo Grablje', 'Hvar', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (80, 21462, 'Vrbanj', 'Vrbanj', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (81, 21463, 'Vrboska', 'Vrboska', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (82, 21465, 'Vrisnik', 'Jelsa', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (83, 21480, 'Vis', 'Vis', 'SPLITSKO-DALMATINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (84, 22204, 'Vezac', 'Široke', 'ŠIBENSKO-KNINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (85, 22204, 'Vadalj', 'Široke', 'ŠIBENSKO-KNINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (86, 22205, 'Vrpolje', 'Perković', 'ŠIBENSKO-KNINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (87, 22206, 'Vrsno', 'Boraja', 'ŠIBENSKO-KNINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (88, 22211, 'Vodice', 'Vodice', 'ŠIBENSKO-KNINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (89, 22222, 'Velika Glava', 'Skradin', 'ŠIBENSKO-KNINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (90, 22222, 'Vačani', 'Skradin', 'ŠIBENSKO-KNINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (91, 22300, 'Vrbnik', 'Knin', 'ŠIBENSKO-KNINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (92, 22300, 'Vrpolje', 'Knin', 'ŠIBENSKO-KNINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (93, 22319, 'Varivode', 'Đevrske', 'ŠIBENSKO-KNINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (94, 22320, 'Velušić', 'Drniš', 'ŠIBENSKO-KNINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (95, 22323, 'Visoka', 'Unešić', 'ŠIBENSKO-KNINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (96, 23210, 'Vrana', 'Biograd na moru', 'ZADARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (97, 23210, 'Vrgada', 'Biograd na moru', 'ZADARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (98, 23234, 'Vir', 'Vir', 'ZADARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (99, 23235, 'Vrsi', 'Vrsi', 'ZADARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (100, 23241, 'Visočane', 'Poličnik', 'ZADARSKA');
 
/* print 'Processed 100 total records' */
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (101, 23247, 'Vinjerac', 'Vinjerac', 'ZADARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (102, 23249, 'Vrčići', 'Povljana', 'ZADARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (103, 23249, 'Vlašići', 'Povljana', 'ZADARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (104, 23284, 'Veli Iž', 'Veli Iž', 'ZADARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (105, 23287, 'Veli Rat', 'Veli Rat', 'ZADARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (106, 23422, 'Velim', 'Stankovci', 'ZADARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (107, 23422, 'Vukšić', 'Stankovci', 'ZADARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (108, 23440, 'Vučipolje', 'Gračac', 'ZADARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (109, 23442, 'Velika Popina', 'Otrić', 'ZADARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (110, 31220, 'Višnjevac', 'Višnjevac', 'OSJEČKO-BARANJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (111, 31327, 'Vardarac', 'Bilje', 'OSJEČKO-BARANJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (112, 31401, 'Viškovci', 'Viškovci', 'OSJEČKO-BARANJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (113, 31401, 'Vučevci', 'Viškovci', 'OSJEČKO-BARANJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (114, 31403, 'Vuka', 'Vuka', 'OSJEČKO-BARANJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (115, 31404, 'Vladislavci', 'Vladislavci', 'OSJEČKO-BARANJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (116, 31500, 'Velimirovac', 'Našice', 'OSJEČKO-BARANJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (117, 31500, 'Vukojevci', 'Našice', 'OSJEČKO-BARANJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (118, 31512, 'Vučjak Feričanački', 'Feričanci', 'OSJEČKO-BARANJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (119, 31512, 'Valenovac', 'Feričanci', 'OSJEČKO-BARANJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (120, 31531, 'Viljevo', 'Viljevo', 'OSJEČKO-BARANJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (121, 31550, 'Valpovo', 'Valpovo', 'OSJEČKO-BARANJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (122, 31554, 'Veliškovci', 'Gat', 'OSJEČKO-BARANJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (123, 31554, 'Vinogradci', 'Gat', 'OSJEČKO-BARANJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (124, 32000, 'Vukovar', 'Vukovar', 'VUKOVARSKO-SRIJEMSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (125, 32100, 'Vinkovci', 'Vinkovci', 'VUKOVARSKO-SRIJEMSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (126, 32224, 'Vera', 'Trpinja', 'VUKOVARSKO-SRIJEMSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (127, 32247, 'Vinkovački Banovci', 'Banovci', 'VUKOVARSKO-SRIJEMSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (128, 32254, 'Vrbanja', 'Vrbanja', 'VUKOVARSKO-SRIJEMSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (129, 32283, 'Vođinci', 'Vođinci', 'VUKOVARSKO-SRIJEMSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (130, 32284, 'Vrbica', 'Stari Mikanovci', 'VUKOVARSKO-SRIJEMSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (131, 33000, 'Virovitica', 'Virovitica', 'VIROVITIČKO-PODRAVSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (132, 33404, 'Vukosavljevica', 'Špišić Bukovica', 'VIROVITIČKO-PODRAVSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (133, 33405, 'Velika Črešnjevica', 'Pitomača', 'VIROVITIČKO-PODRAVSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (134, 33407, 'Veliko Polje', 'Gornje Bazje', 'VIROVITIČKO-PODRAVSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (135, 33411, 'Vladimirovac', 'Gradina', 'VIROVITIČKO-PODRAVSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (136, 33507, 'Veliki Rastovac', 'Crnac', 'VIROVITIČKO-PODRAVSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (137, 33514, 'Vojlovica', 'Čačinci', 'VIROVITIČKO-PODRAVSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (138, 33520, 'Višnjica', 'Slatina', 'VIROVITIČKO-PODRAVSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (139, 33522, 'Voćin', 'Voćin', 'VIROVITIČKO-PODRAVSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (140, 33523, 'Vraneševci', 'Čađavica', 'VIROVITIČKO-PODRAVSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (141, 33525, 'Vaška', 'Sopje', 'VIROVITIČKO-PODRAVSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (142, 33533, 'Velika Babina Gora', 'Pivnica Slavonska', 'VIROVITIČKO-PODRAVSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (143, 33533, 'Velika Klisa', 'Pivnica Slavonska', 'VIROVITIČKO-PODRAVSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (144, 33533, 'Velika Trapinska', 'Pivnica Slavonska', 'VIROVITIČKO-PODRAVSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (145, 34000, 'Vidovci', 'Požega', 'POŽEŠKO-SLAVONSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (146, 34000, 'Vasine Laze', 'Požega', 'POŽEŠKO-SLAVONSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (147, 34310, 'Viškovci', 'Pleternica', 'POŽEŠKO-SLAVONSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (148, 34310, 'Vrčin Dol', 'Pleternica', 'POŽEŠKO-SLAVONSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (149, 34310, 'Vesela', 'Pleternica', 'POŽEŠKO-SLAVONSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (150, 34320, 'Vranić', 'Orljavac', 'POŽEŠKO-SLAVONSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (151, 34322, 'Vilić Selo', 'Brestovac', 'POŽEŠKO-SLAVONSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (152, 34330, 'Velika', 'Velika', 'POŽEŠKO-SLAVONSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (153, 34335, 'Vetovo', 'Vetovo', 'POŽEŠKO-SLAVONSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (154, 34340, 'Venje', 'Kutjevo', 'POŽEŠKO-SLAVONSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (155, 34350, 'Vukojevica', 'Čaglin', 'POŽEŠKO-SLAVONSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (156, 34350, 'Vlatkovac', 'Čaglin', 'POŽEŠKO-SLAVONSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (157, 34350, 'Veliki Bilač', 'Čaglin', 'POŽEŠKO-SLAVONSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (158, 34552, 'Veliki Banovac', 'Badljevina', 'POŽEŠKO-SLAVONSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (159, 34553, 'Veliki Budići', 'Bučje', 'POŽEŠKO-SLAVONSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (160, 35209, 'Vranovci', 'Bukovlje', 'BRODSKO-POSAVSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (161, 35210, 'Vrpolje', 'Vrpolje', 'BRODSKO-POSAVSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (162, 35211, 'Vrhovina', 'Trnjani', 'BRODSKO-POSAVSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (163, 35221, 'Velika Kopanica', 'Velika Kopanica', 'BRODSKO-POSAVSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (164, 35414, 'Vrbova', 'Vrbova', 'BRODSKO-POSAVSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (165, 35420, 'Vladisovo', 'Staro Petrovo Selo', 'BRODSKO-POSAVSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (166, 35423, 'Vrbje', 'Vrbje', 'BRODSKO-POSAVSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (167, 35423, 'Visoka Greda', 'Vrbje', 'BRODSKO-POSAVSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (168, 35430, 'Vrbovljani', 'Okučani', 'BRODSKO-POSAVSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (169, 40306, 'Vugrišinec', 'Macinec', 'MEĐIMURSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (170, 40306, 'Vukanovec', 'Macinec', 'MEĐIMURSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (171, 40311, 'Vučetinec', 'Lopatinec', 'MEĐIMURSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (172, 40313, 'Vrhovljan', 'Sveti Martin na Muri', 'MEĐIMURSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (173, 40316, 'Vratišinec', 'Vratišinec', 'MEĐIMURSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (174, 40322, 'Vularija', 'Orehovica', 'MEĐIMURSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (175, 42000, 'Varaždin', 'Varaždin', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (176, 42204, 'Varaždin Breg', 'Turčin', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (177, 42205, 'Vidovec', 'Vidovec', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (178, 42207, 'Vinica Breg', 'Vinica', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (179, 42207, 'Vratno Donje', 'Vinica', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (180, 42207, 'Vinica', 'Vinica', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (181, 42208, 'Veliki Lovrečan', 'Cestica', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (182, 42208, 'Vratno Otok', 'Cestica', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (183, 42208, 'Virje Križovljansko', 'Cestica', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (184, 42223, 'Varaždinske Toplice', 'Varaždinske Toplice', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (185, 42223, 'Vrtlinovec', 'Varaždinske Toplice', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (186, 42224, 'Vrh Visočki', 'Visoko', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (187, 42224, 'Visoko', 'Visoko', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (188, 42224, 'Vinično', 'Visoko', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (189, 42230, 'Vinogradi Ludbreški', 'Ludbreg', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (190, 42231, 'Veliki Bukovec', 'Mali Bukovec', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (191, 42232, 'Vrbanovec', 'Donji Martijanec', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (192, 42240, 'Vuglovec', 'Ivanec', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (193, 42240, 'Vitešinec', 'Ivanec', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (194, 42244, 'Vukovoj', 'Klenovnik', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (195, 42250, 'Vulišinec', 'Lepoglava', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (196, 42250, 'Viletinec', 'Lepoglava', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (197, 42253, 'Vrhovec Bednjanski', 'Bednja', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (198, 42253, 'Vranojelje', 'Bednja', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (199, 42253, 'Veliki Gorenec', 'Bednja', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (200, 42253, 'Vrbno', 'Bednja', 'VARAŽDINSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (201, 43000, 'Veliko Korenovo', 'Bjelovar', 'BJELOVARSKO-BILOGORSKA');
 
/* print 'Processed 200 total records' */
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (202, 43211, 'Visovi', 'Predavac', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (203, 43226, 'Vrbica', 'Veliko Trojstvo', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (204, 43226, 'Veliko Trojstvo', 'Veliko Trojstvo', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (205, 43226, 'Višnjevac', 'Veliko Trojstvo', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (206, 43233, 'Veliki Prokop', 'Trnovitički Popovac', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (207, 43240, 'Vrtlinska', 'Čazma', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (208, 43240, 'Vučani', 'Čazma', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (209, 43245, 'Vagovina', 'Gornji Draganec', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (210, 43270, 'Veliki Grđevac', 'Veliki Grđevac', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (211, 43271, 'Velika Pisanica', 'Velika Pisanica', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (212, 43280, 'Veliki Pašijan', 'Garešnica', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (213, 43282, 'Velika Bršljanica', 'Veliko Vukovje', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (214, 43282, 'Veliko Vukovje', 'Veliko Vukovje', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (215, 43284, 'Velika Trnava', 'Hercegovac', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (216, 43285, 'Velika Trnovitica', 'Velika Trnovitica', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (217, 43285, 'Velika Mlinska', 'Velika Trnovitica', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (218, 43290, 'Velika Dapčevica', 'Grubišno Polje', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (219, 43290, 'Velika Jasenovača', 'Grubišno Polje', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (220, 43290, 'Velika Barna', 'Grubišno Polje', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (221, 43290, 'Velika Peratovica', 'Grubišno Polje', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (222, 43293, 'Veliki Zdenci', 'Veliki Zdenci', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (223, 43500, 'Vrbovac', 'Daruvar', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (224, 43500, 'Vukovije', 'Daruvar', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (225, 43531, 'Veliki Miletinac', 'Veliki Bastaji', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (226, 43531, 'Veliki Bastaji', 'Veliki Bastaji', 'BJELOVARSKO-BILOGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (227, 44203, 'Veliko Svinjičko', 'Gušće', 'SISAČKO-MOSLAVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (228, 44205, 'Veliki Šušnjar', 'Donja Bačuga', 'SISAČKO-MOSLAVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (229, 44210, 'Vedro Polje', 'Sunja', 'SISAČKO-MOSLAVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (230, 44212, 'Velika Gradusa', 'Mala Gradusa', 'SISAČKO-MOSLAVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (231, 44212, 'Vukoševac', 'Mala Gradusa', 'SISAČKO-MOSLAVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (232, 44271, 'Vrh Letovanički', 'Letovanić', 'SISAČKO-MOSLAVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (233, 44273, 'Vratečko', 'Sela', 'SISAČKO-MOSLAVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (234, 44273, 'Vurot', 'Sela', 'SISAČKO-MOSLAVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (235, 44316, 'Vidrenjak', 'Velika Ludina', 'SISAČKO-MOSLAVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (236, 44316, 'Velika Ludina', 'Velika Ludina', 'SISAČKO-MOSLAVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (237, 44318, 'Voloder', 'Voloder', 'SISAČKO-MOSLAVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (238, 44324, 'Višnjica Uštička', 'Jasenovac', 'SISAČKO-MOSLAVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (239, 44330, 'Voćarica', 'Novska', 'SISAČKO-MOSLAVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (240, 44400, 'Velika Solina', 'Glina', 'SISAČKO-MOSLAVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (241, 44402, 'Veliki Obljaj', 'Mali Obljaj', 'SISAČKO-MOSLAVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (242, 44405, 'Veliki Gradac', 'Mali Gradac', 'SISAČKO-MOSLAVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (243, 44406, 'Vlahović', 'Vlahović', 'SISAČKO-MOSLAVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (244, 44415, 'Velika Vranovina', 'Topusko', 'SISAČKO-MOSLAVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (245, 44415, 'Vorkapić', 'Topusko', 'SISAČKO-MOSLAVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (246, 44434, 'Veliko Krčevo', 'Graboštani', 'SISAČKO-MOSLAVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (247, 44435, 'Volinja', 'Divuša', 'SISAČKO-MOSLAVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (248, 44440, 'Vanići', 'Dvor', 'SISAČKO-MOSLAVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (249, 44440, 'Vrpolje Bansko', 'Dvor', 'SISAČKO-MOSLAVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (250, 47000, 'Vodostaj', 'Karlovac', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (251, 47000, 'Velika Jelsa', 'Karlovac', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (252, 47201, 'Vrbanci', 'Draganići', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (253, 47201, 'Vrh', 'Draganići', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (254, 47205, 'Vukmanić', 'Vukmanić', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (255, 47220, 'Vojnić', 'Vojnić', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (256, 47220, 'Vojišnica', 'Vojnić', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (257, 47240, 'Videkić Selo', 'Slunj', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (258, 47242, 'Vojnović Brdo', 'Krnjak', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (259, 47242, 'Velika Crkvina', 'Krnjak', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (260, 47243, 'Veljunski Ponorac', 'Veljun', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (261, 47243, 'Veljunska Glina', 'Veljun', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (262, 47243, 'Veljun', 'Veljun', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (263, 47251, 'Vrhova Gorica', 'Bosiljevo', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (264, 47251, 'Vodena Draga', 'Bosiljevo', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (265, 47251, 'Varoš Bosiljevski', 'Bosiljevo', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (266, 47252, 'Veliki Kozinac', 'Barilović', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (267, 47252, 'Vijenac Barilovićki', 'Barilović', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (268, 47261, 'Venac Mrežnički', 'Zvečaj', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (269, 47263, 'Višnjić Brdo', 'Gornje Dubrave', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (270, 47263, 'Vucelići', 'Gornje Dubrave', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (271, 47271, 'Veliki Modrušpotok', 'Netretić', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (272, 47271, 'Vinski Vrh', 'Netretić', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (273, 47272, 'Veselići', 'Ribnik', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (274, 47273, 'Vukova Gorica', 'Srednje Prilišće', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (275, 47276, 'Velika Paka', 'Žakanje', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (276, 47280, 'Vrhovački Sopot', 'Ozalj', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (277, 47280, 'Vrhovac', 'Ozalj', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (278, 47280, 'Vinivrh', 'Ozalj', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (279, 47281, 'Vuksani', 'Mali Erjavec', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (280, 47281, 'Vrbanska Draga', 'Mali Erjavec', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (281, 47281, 'Veliki Erjavec', 'Mali Erjavec', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (282, 47282, 'Veliki Vrh Kamanjski', 'Kamanje', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (283, 47283, 'Vuketić', 'Vivodina', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (284, 47283, 'Varaštovac', 'Vivodina', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (285, 47283, 'Vivodina', 'Vivodina', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (286, 47283, 'Vrškovac', 'Vivodina', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (287, 47286, 'Vukoder', 'Mahično', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (288, 47300, 'Vitunj', 'Ogulin', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (289, 47303, 'Vojnovac', 'Josipdol', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (290, 47303, 'Vajin Vrh', 'Josipdol', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (291, 47313, 'Vukelići', 'Drežnica', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (292, 47313, 'Vručac', 'Drežnica', 'KARLOVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (293, 48260, 'Veliki Potočec', 'Križevci', 'KOPRIVNIČKO-KRIŽEVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (294, 48264, 'Vojakovac', 'Kloštar Vojakovački', 'KOPRIVNIČKO-KRIŽEVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (295, 48264, 'Večeslavec', 'Kloštar Vojakovački', 'KOPRIVNIČKO-KRIŽEVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (296, 48264, 'Velike Sesvete', 'Kloštar Vojakovački', 'KOPRIVNIČKO-KRIŽEVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (297, 48264, 'Vujići Vojakovački', 'Kloštar Vojakovački', 'KOPRIVNIČKO-KRIŽEVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (298, 48265, 'Veliki Raven', 'Raven', 'KOPRIVNIČKO-KRIŽEVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (299, 48267, 'Viranec', 'Orehovec', 'KOPRIVNIČKO-KRIŽEVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (300, 48267, 'Voljevec Riječki', 'Orehovec', 'KOPRIVNIČKO-KRIŽEVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (301, 48267, 'Vukovec', 'Orehovec', 'KOPRIVNIČKO-KRIŽEVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (302, 48268, 'Vukšinec Riječki', 'Gornja Rijeka', 'KOPRIVNIČKO-KRIŽEVAČKA');
 
/* print 'Processed 300 total records' */
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (303, 48269, 'Vojnovec Kalnički', 'Kalnik', 'KOPRIVNIČKO-KRIŽEVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (304, 48306, 'Velika Branjska', 'Sokolovac', 'KOPRIVNIČKO-KRIŽEVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (305, 48306, 'Vrhovac Sokolovački', 'Sokolovac', 'KOPRIVNIČKO-KRIŽEVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (306, 48306, 'Velika Mučna', 'Sokolovac', 'KOPRIVNIČKO-KRIŽEVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (307, 48306, 'Veliki Botinovac', 'Sokolovac', 'KOPRIVNIČKO-KRIŽEVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (308, 48312, 'Vojvodinec', 'Rasinja', 'KOPRIVNIČKO-KRIŽEVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (309, 48312, 'Veliki Poganac', 'Rasinja', 'KOPRIVNIČKO-KRIŽEVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (310, 48312, 'Veliki Grabičani', 'Rasinja', 'KOPRIVNIČKO-KRIŽEVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (311, 48312, 'Velika Rasinjica', 'Rasinja', 'KOPRIVNIČKO-KRIŽEVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (312, 48317, 'Veliki Otok', 'Legrad', 'KOPRIVNIČKO-KRIŽEVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (313, 48325, 'Vlaislav', 'Novigrad Podravski', 'KOPRIVNIČKO-KRIŽEVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (314, 48326, 'Virje', 'Virje', 'KOPRIVNIČKO-KRIŽEVAČKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (315, 49000, 'Vidovec Krapinski', 'Krapina', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (316, 49214, 'Vižovlje', 'Veliko Trgovišće', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (317, 49214, 'Veliko Trgovišće', 'Veliko Trgovišće', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (318, 49215, 'Vilanci', 'Tuhelj', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (319, 49215, 'Velika Erpenja', 'Tuhelj', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (320, 49216, 'Velika Horvatska', 'Desinić', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (321, 49217, 'Vrtnjakovec', 'Krapinske Toplice', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (322, 49217, 'Viča Sela', 'Krapinske Toplice', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (323, 49218, 'Velika Gora', 'Pregrada', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (324, 49218, 'Vojsak', 'Pregrada', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (325, 49218, 'Valentinovo', 'Pregrada', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (326, 49218, 'Višnjevec', 'Pregrada', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (327, 49218, 'Vinagora', 'Pregrada', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (328, 49218, 'Vrhi Vinagorski', 'Pregrada', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (329, 49218, 'Vrhi Pregradski', 'Pregrada', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (330, 49221, 'Vučak', 'Bedekovčina', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (331, 49223, 'Vrankovec', 'Sveti Križ Začretje', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (332, 49224, 'Velika Ves', 'Lepajci', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (333, 49224, 'Vidovec Petrovski', 'Lepajci', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (334, 49228, 'Vojnić Breg', 'Brestovec Orehovički', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (335, 49231, 'Vrbišnica', 'Hum na Sutli', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (336, 49245, 'Vinterovec', 'Gornja Stubica', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (337, 49245, 'Volavec', 'Gornja Stubica', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (338, 49247, 'Veleškovec', 'Zlatar Bistrica', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (339, 49251, 'Veliki Bukovec', 'Mače', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (340, 49251, 'Vukanci', 'Mače', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (341, 49251, 'Veliki Komor', 'Mače', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (342, 49252, 'Veternica/dio/', 'Mihovljan', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (343, 49252, 'Velika Veternička', 'Mihovljan', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (344, 49253, 'Velika Petrovagorska', 'Lobor', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (345, 49253, 'Vinipotok', 'Lobor', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (346, 49253, 'Vojnovec Loborski', 'Lobor', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (347, 49254, 'Vižanovec', 'Belec', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (348, 49255, 'Veternica/dio/', 'Novi Golubovec', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (349, 49283, 'Vrbovo', 'Hraščina-Trgovišće', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (350, 49295, 'Velinci', 'Kumrovec', 'KRAPINSKO-ZAGORSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (351, 51212, 'Vele Mune', 'Vele Mune', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (352, 51213, 'Veli Brgud', 'Jurdani', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (353, 51216, 'Viškovo', 'Viškovo', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (354, 51219, 'Valići', 'Čavle', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (355, 51221, 'Vrh Martinšćice', 'Kostrena', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (356, 51241, 'Veli Dol', 'Križišće', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (357, 51301, 'Vrh Brodski', 'Brod na Kupi', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (358, 51301, 'Velika Lešnica', 'Brod na Kupi', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (359, 51304, 'Vode', 'Gerovo', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (360, 51305, 'Vrhovci', 'Tršće', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (361, 51311, 'Veliko Selce', 'Skrad', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (362, 51312, 'Vele Drage', 'Brod Moravice', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (363, 51317, 'Vela Voda', 'Crni Lug', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (364, 51321, 'Vrata', 'Vrata', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (365, 51325, 'Vukelići', 'Moravice', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (366, 51325, 'Vučinci', 'Moravice', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (367, 51326, 'Vujnovići', 'Vrbovsko', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (368, 51326, 'Vrbovsko', 'Vrbovsko', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (369, 51328, 'Vučnik', 'Lukovdol', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (370, 51329, 'Veliki Jadrč', 'Severin na Kupi', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (371, 51414, 'Vela Učka', 'Ičići', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (372, 51414, 'Veprinac', 'Ičići', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (373, 51500, 'Vrh', 'Krk', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (374, 51511, 'Vantačići', 'Malinska', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (375, 51516, 'Vrbnik', 'Vrbnik', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (376, 51550, 'Vele Srakane', 'Mali Lošinj', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (377, 51551, 'Veli Lošinj', 'Veli Lošinj', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (378, 51556, 'Vidovići', 'Martinšćica', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (379, 51557, 'Vodice', 'Cres', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (380, 51557, 'Valun', 'Cres', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (381, 51557, 'Vrana', 'Cres', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (382, 51559, 'Važminec', 'Beli', 'PRIMORSKO-GORANSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (383, 52000, 'Vela Traba', 'Pazin', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (384, 52100, 'Valtura', 'Pula', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (385, 52207, 'Vadreš', 'Barban', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (386, 52208, 'Veliki Vareški', 'Krnica', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (387, 52215, 'Vodnjan', 'Vodnjan (Dignano)', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (388, 52220, 'Vinež', 'Labin', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (389, 52220, 'Veli Golji', 'Labin', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (390, 52220, 'Veli Turini', 'Labin', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (391, 52222, 'Viškovići', 'Koromačno', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (392, 52231, 'Vrećari', 'Nedešćina', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (393, 52232, 'Veljaki', 'Kršan', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (394, 52234, 'Vozilići', 'Plomin', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (395, 52341, 'Varož', 'Žminj', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (396, 52341, 'Vidulini', 'Žminj', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (397, 52341, 'Vadediji', 'Žminj', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (398, 52420, 'Veli Mlun', 'Buzet', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (399, 52420, 'Vrh', 'Buzet', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (400, 52420, 'Vodice', 'Buzet', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (401, 52428, 'Vižintini', 'Oprtalj (Portole)', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (402, 52429, 'Vižintini Vrhi', 'Grožnjan (Grisignana)', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (403, 52434, 'Vranja', 'Boljun', 'ISTARSKA');
 
/* print 'Processed 400 total records' */
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (404, 52440, 'Vrvari', 'Poreč', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (405, 52440, 'Valkarin', 'Poreč', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (406, 52440, 'Veli Maj', 'Poreč', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (407, 52440, 'Veleniki', 'Poreč', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (408, 52440, 'Vranići kod Poreča', 'Poreč', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (409, 52446, 'Vežnaveri', 'Nova Vas', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (410, 52447, 'Vrbani', 'Vižinada', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (411, 52447, 'Vižinada', 'Vižinada', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (412, 52447, 'Vranje Selo', 'Vižinada', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (413, 52447, 'Vranići kod Vižinade', 'Vižinada', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (414, 52447, 'Velići', 'Vižinada', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (415, 52447, 'Vrh Lašići', 'Vižinada', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (416, 52448, 'Vošteni', 'Sveti Lovreč', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (417, 52450, 'Vrsar', 'Vrsar', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (418, 52460, 'Veli Mlin', 'Buje (Buie)', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (419, 52462, 'Vrnjak', 'Momjan (Momiano)', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (420, 52463, 'Vranići kod Višnjana', 'Višnjan', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (421, 52463, 'Vejaki', 'Višnjan', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (422, 52463, 'Višnjan', 'Višnjan', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (423, 52463, 'Vrhjani', 'Višnjan', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (424, 52464, 'Valentići', 'Kaštelir', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (425, 52465, 'Vabriga', 'Tar', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (426, 52470, 'Valica', 'Umag (Umago)', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (427, 52470, 'Vardica', 'Umag (Umago)', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (428, 52470, 'Vilanija', 'Umag (Umago)', 'ISTARSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (429, 53203, 'Vukelići', 'Kosinj', 'LIČKO-SENJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (430, 53205, 'Vrebac', 'Medak', 'LIČKO-SENJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (431, 53212, 'Veliki Žitnik', 'Klanac', 'LIČKO-SENJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (432, 53212, 'Vranovine', 'Klanac', 'LIČKO-SENJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (433, 53212, 'Vaganac', 'Klanac', 'LIČKO-SENJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (434, 53213, 'Velika Plana', 'Donje Pazarište', 'LIČKO-SENJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (435, 53223, 'Vrhovine', 'Vrhovine', 'LIČKO-SENJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (436, 53230, 'Vranovača', 'Korenica', 'LIČKO-SENJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (437, 53230, 'Vrelo Koreničko', 'Korenica', 'LIČKO-SENJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (438, 53230, 'Vrpile', 'Korenica', 'LIČKO-SENJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (439, 53230, 'Vedašići', 'Korenica', 'LIČKO-SENJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (440, 53234, 'Visuć', 'Udbina', 'LIČKO-SENJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (441, 53244, 'Vranik', 'Lovinac', 'LIČKO-SENJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (442, 53260, 'Vodoteč', 'Brinje', 'LIČKO-SENJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (443, 53271, 'Veljun Primorski', 'Krivi Put', 'LIČKO-SENJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (444, 53271, 'Vrataruša', 'Krivi Put', 'LIČKO-SENJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (445, 53273, 'Vratnik', 'Vratnik', 'LIČKO-SENJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (446, 53273, 'Vrzići', 'Vratnik', 'LIČKO-SENJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (447, 53284, 'Velike Brisnice', 'Sveti Juraj', 'LIČKO-SENJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (448, 53284, 'Volarice', 'Sveti Juraj', 'LIČKO-SENJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (449, 53288, 'Vidovac Cesarički', 'Karlobag', 'LIČKO-SENJSKA');
INSERT into Mjesto (ID, PostanskiBroj, Naziv, Naselje, Zupanija) values (450, 53296, 'Vidalići', 'Zubovići', 'LIČKO-SENJSKA');

 
#unos u tablicu medij
INSERT into Medij (ID, Naziv) values (1, 'DVD');
INSERT into Medij (ID, Naziv) values (2, 'CD');
INSERT into Medij (ID, Naziv) values (3, 'VHS');
INSERT into Medij (ID, Naziv) values (4, 'Beta');


#unos u tablicu film
INSERT into Film (ID, medij, Naziv, Trajanje, Reziser, GlavniGlumci, SporedniGlumci, zanr, KratkiOpis) values (1, 2, 'The Matrix Reloaded', 138, 'Andy i Larry Wachowski', 'Keanu Reeves', 'Helmut Bakaitis', 1, 'Neo and the rebel leaders estimate that they have 72 hours until 250,000 probes discover Zion and destroy it and its inhabitants. During this, Neo must decide how he can save Trinity from a dark fate in his dreams.');
INSERT into Film (ID, medij, Naziv, Trajanje, Reziser, GlavniGlumci, SporedniGlumci, zanr, KratkiOpis) values (2, 1, 'Serenity', 119, 'Joss Whedon', 'Summer Glau', 'Sean Maher', 1, ' the future, when a passenger with a deadly secret. Six rebels on the run. An assassin in pursuit. When the renegade crew of Serenity agrees to hide a fugitive on their ship, they find themselves in an awesome action-packed battle between the relentless military might of a totalitarian regime who will destroy anything - or anyone - to get the girl back and the bloodthirsty creatures who roam the uncharted areas of space. But, the greatest danger of all may be on their ship. From the mind of Joss Whedon, comes a new edge-of-your-seat adventure loaded with explosive battles, gripping special effects and fantastic new worlds.  ');
INSERT into Film (ID, medij, Naziv, Trajanje, Reziser, GlavniGlumci, SporedniGlumci, zanr, KratkiOpis) values (3, 2, 'Pulp Fiction', 154, 'Quentin Tarantino', 'John Travolta', 'Samuel L. Jackson', 4, 'Jules Winnfield and Vincent Vega are two hitmen who are out to retrieve a suitcase stolen from their employer, mob boss Marsellus Wallace. Wallace has also asked Vincent to take his wife Mia out a few days later when Wallace himself will be out of town. Butch Coolidge is an aging boxer who is paid by Wallace to lose his next fight. The lives of these seemingly unrelated people are woven together comprising of a series of funny, bizarre and uncalled-for incidents');
INSERT into Film (ID, medij, Naziv, Trajanje, Reziser, GlavniGlumci, SporedniGlumci, zanr, KratkiOpis) values (4, 1, 'The Matrix Revolutions', 129, 'Andy i Larry Wachowski', 'Keanu Reeves', 'Monica Belluci', 1, 'The human city of Zion defends itself against the massive invasion of the machines as Neo fights to end the war at another front while also opposing the rogue Agent Smith');
INSERT into Film (ID, medij, Naziv, Trajanje, Reziser, GlavniGlumci, SporedniGlumci, zanr, KratkiOpis) values (5, 3, 'The Shawshank Redemption', 142, 'Frank Darabont', 'Tim Robbins, Morgan Freeman', 'Bob Gunton, William Sadler', 6, 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.');
INSERT into Film (ID, medij, Naziv, Trajanje, Reziser, GlavniGlumci, SporedniGlumci, zanr, KratkiOpis) values (6, 2, 'Fight Club', 139, 'David Fincher', 'Edward Norton, Brad Pitt', 'Helena Bonham Carter', 3, 'The lives of two mob hit men, a boxer, a gangster''s wife, and a pair of diner bandits intertwine in four tales of violence and redemption.');
INSERT into Film (ID, medij, Naziv, Trajanje, Reziser, GlavniGlumci, SporedniGlumci, zanr, KratkiOpis) values (7, 3, 'One Flew Over the Cuckoo''s Nest', 133, 'Milos Forman', 'Jack Nicholson', 'Louise Fletcher, William Redfield', 6, 'Upon arrival at a mental institution, a brash rebel rallies the patients together to take on the oppressive Nurse Ratched, a woman more a dictator than a nurse.');
INSERT into Film (ID, medij, Naziv, Trajanje, Reziser, GlavniGlumci, SporedniGlumci, zanr, KratkiOpis) values (8, 1, 'Star Wars: Episode V - The Empire Strikes Back', 124, 'Irvin Kershner', 'Mark Hamill, Harrison Ford', 'Carrie Fisher', 1, 'While Luke takes advanced Jedi training from Yoda, his friends are relentlessly pursued by Darth Vader as part of his plan to capture Luke.');
INSERT into Film (ID, medij, Naziv, Trajanje, Reziser, GlavniGlumci, SporedniGlumci, zanr, KratkiOpis) values (9, 4, 'My Man Godfrey', 94, 'Gregory La Cava', 'William Powell', 'Carole Lombard	 ', 7, 'A scatterbrained socialite hires a vagrant as a family butler...but there''s more to Godfrey than meets the eye.');

 

#unos u tablicu clan
INSERT into Clan (ID, ImePrezime, Ulica, KucniBroj, mjesto, Telefon) values (1, 'Pero Perić', 'Unska', '16', 1, '084-123456');
INSERT into Clan (ID, ImePrezime, Ulica, KucniBroj, mjesto, Telefon) values (2, 'Ana Milić', 'Zagrebačka', '28', 16, '085-654321');
INSERT into Clan (ID, ImePrezime, Ulica, KucniBroj, mjesto, Telefon) values (3, 'Sanja Tarak', 'Anićeva', '42', 42, 'nema');
INSERT into Clan (ID, ImePrezime, Ulica, KucniBroj, mjesto, Telefon) values (4, 'Nikola Jurčević', 'Zagorska', '194', 99, NULL);
INSERT into Clan (ID, ImePrezime, Ulica, KucniBroj, mjesto, Telefon) values (5, 'Katarina Gjalski', 'Kneza Mislava', '11a', 1, NULL);
INSERT into Clan (ID, ImePrezime, Ulica, KucniBroj, mjesto, Telefon) values (6, 'Stjepan Kotoromanić', 'Ilica', '224', 356, NULL);
INSERT into Clan (ID, ImePrezime, Ulica, KucniBroj, mjesto, Telefon) values (7, 'Ivan Mažuranić', 'Mažuranićeva', '11', 445, NULL);

#unos u tablicu posudba
INSERT into Posudba (film, clan, DatumPosudbe, DatumVracanja) values (2, 1, CURDATE(), CURDATE());
INSERT into Posudba (film, clan, DatumPosudbe, DatumVracanja) values (4, 2, CURDATE(), NULL);
INSERT into Posudba (film, clan, DatumPosudbe, DatumVracanja) values (1, 1, CURDATE(), NULL);
INSERT into Posudba (film, clan, DatumPosudbe, DatumVracanja) values (3, 1, CURDATE(), CURDATE());
INSERT into Posudba (film, clan, DatumPosudbe, DatumVracanja) values (4, 1, CURDATE(), CURDATE());
INSERT into Posudba (film, clan, DatumPosudbe, DatumVracanja) values (5, 1, CURDATE(), CURDATE());
INSERT into Posudba (film, clan, DatumPosudbe, DatumVracanja) values (6, 2, CURDATE(), CURDATE());
INSERT into Posudba (film, clan, DatumPosudbe, DatumVracanja) values (7, 2, CURDATE(), CURDATE());
INSERT into Posudba (film, clan, DatumPosudbe, DatumVracanja) values (2, 2, CURDATE(), CURDATE());
INSERT into Posudba (film, clan, DatumPosudbe, DatumVracanja) values (1, 2, CURDATE(), NULL);
INSERT into Posudba (film, clan, DatumPosudbe, DatumVracanja) values (4, 3, CURDATE(), CURDATE());
INSERT into Posudba (film, clan, DatumPosudbe, DatumVracanja) values (6, 4, CURDATE(), CURDATE());
INSERT into Posudba (film, clan, DatumPosudbe, DatumVracanja) values (6, 5, CURDATE(), CURDATE());
INSERT into Posudba (film, clan, DatumPosudbe, DatumVracanja) values (6, 6, CURDATE(), CURDATE());



