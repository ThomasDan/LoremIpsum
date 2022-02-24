USE LoremIpsumDB

INSERT INTO Language (code, name) VALUES
	('da-DK', 'Danish'),
	('en-UK', 'United Kingdom English'),
	('fi-FI', 'Finnish'),
	('de-DE', 'G*rman'),
	('li-GA', 'Gangsta Lorem Ipsum')

INSERT INTO Page (name) VALUES ('Frontpage')

INSERT INTO Content (name, pageID) VALUES
	('MainTitle', 1),
	('WelcomeText', 1)

INSERT INTO Translation (contentID, languageCode, text) VALUES
	(2, 'da-DK', 'Goddag og velkommen til vores hjemmeside. Her vil vi gerne snakke flere sprog! Vi h�ber at du kan forst� hvad det er vi siger. Vores navne er Thomas og Jacob og vi studere kodning. Alts� det at lave programmer og hjemmesider til din computer og telefon. P� den her hjemmeside �ver vi os i at skifte sprog ogs� se hvordan det ser ud p� vores hjemmeside. '),
	(2, 'en-UK', 'Hello and welcome to our website. Here we want to speak more languages! We hope you understand what we are saying. Our names are Thomas and Jacob and we study coding. That is, making programs and websites for your computer and phone. On this website, we practice changing languages and also see what it looks like on our website. '),
	(2, 'fi-FI', 'Hei ja tervetuloa sivuillemme. T��ll� haluamme puhua enemm�n kieli�! Toivomme, ett� ymm�rr�t, mit� tarkoitamme. Nimemme ovat Thomas ja Jacob ja opiskelemme koodausta. Toisin sanoen ohjelmien ja verkkosivujen tekeminen tietokoneellesi ja puhelimeesi. T�ll� sivustolla harjoittelemme kielten vaihtamista ja katsomme my�s, milt� se n�ytt�� verkkosivuillamme.'),
	(2, 'de-DE', 'Hallo und willkommen auf unserer Website. Hier wollen wir mehr Sprachen sprechen! Wir hoffen, dass Sie verstehen, was wir sagen. Unsere Namen sind Thomas und Jacob und wir studieren Programmieren. Das hei�t, Programme und Websites f�r Ihren Computer und Ihr Telefon zu erstellen. Auf dieser Website �ben wir den Sprachwechsel und sehen auch, wie es auf unserer Website aussieht. '),
	(2, 'li-GA', 'Lorizzle ipsizzle dolizzle sit amizzle, consectetuer adipiscing yo mamma. Nullam sapien velizzle, its fo rizzle volutpizzle, suscipit for sure, brizzle vizzle, its fo rizzle. Pellentesque we gonna chung tortizzle. Sed eros. Stuff fizzle dolor dapibus turpizzle tempizzle shizznit. pellentesque nibh et turpizzle. Vestibulum izzle tortor. Gangsta mammasay mammasa mamma oo sa rhoncus fo shizzle. Izzle the bizzle habitasse bow wow wow dictumst. Dang dapibizzle.')