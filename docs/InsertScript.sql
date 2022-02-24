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
	(2, 'da-DK', 'Goddag og velkommen til vores hjemmeside. Her vil vi gerne snakke flere sprog! Vi håber at du kan forstå hvad det er vi siger. Vores navne er Thomas og Jacob og vi studere kodning. Altså det at lave programmer og hjemmesider til din computer og telefon. På den her hjemmeside øver vi os i at skifte sprog også se hvordan det ser ud på vores hjemmeside. '),
	(2, 'en-UK', 'Hello and welcome to our website. Here we want to speak more languages! We hope you understand what we are saying. Our names are Thomas and Jacob and we study coding. That is, making programs and websites for your computer and phone. On this website, we practice changing languages and also see what it looks like on our website. '),
	(2, 'fi-FI', 'Hei ja tervetuloa sivuillemme. Täällä haluamme puhua enemmän kieliä! Toivomme, että ymmärrät, mitä tarkoitamme. Nimemme ovat Thomas ja Jacob ja opiskelemme koodausta. Toisin sanoen ohjelmien ja verkkosivujen tekeminen tietokoneellesi ja puhelimeesi. Tällä sivustolla harjoittelemme kielten vaihtamista ja katsomme myös, miltä se näyttää verkkosivuillamme.'),
	(2, 'de-DE', 'Hallo und willkommen auf unserer Website. Hier wollen wir mehr Sprachen sprechen! Wir hoffen, dass Sie verstehen, was wir sagen. Unsere Namen sind Thomas und Jacob und wir studieren Programmieren. Das heißt, Programme und Websites für Ihren Computer und Ihr Telefon zu erstellen. Auf dieser Website üben wir den Sprachwechsel und sehen auch, wie es auf unserer Website aussieht. '),
	(2, 'li-GA', 'Lorizzle ipsizzle dolizzle sit amizzle, consectetuer adipiscing yo mamma. Nullam sapien velizzle, its fo rizzle volutpizzle, suscipit for sure, brizzle vizzle, its fo rizzle. Pellentesque we gonna chung tortizzle. Sed eros. Stuff fizzle dolor dapibus turpizzle tempizzle shizznit. pellentesque nibh et turpizzle. Vestibulum izzle tortor. Gangsta mammasay mammasa mamma oo sa rhoncus fo shizzle. Izzle the bizzle habitasse bow wow wow dictumst. Dang dapibizzle.')