USE LoremIpsumDB

INSERT INTO Language (code, name, imageURL) VALUES
	('da-DK', 'Danish', 'https://images-ext-1.discordapp.net/external/u1uTYo4zCyBUWEZ0ra4W_NMtowMQnlgUyvfeo5aggY0/https/upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Flag_of_Denmark.svg/1280px-Flag_of_Denmark.svg.png?width=584&height=442'),
	('en-UK', 'United Kingdom English', 'https://images-ext-1.discordapp.net/external/v7Mn7NA52n8m9_vFgAWffZeQ3MqFCBiBzMAxhkHU9Hw/https/upload.wikimedia.org/wikipedia/en/thumb/a/ae/Flag_of_the_United_Kingdom.svg/1920px-Flag_of_the_United_Kingdom.svg.png?width=883&height=442'),
	('fi-FI', 'Finnish', 'https://images-ext-2.discordapp.net/external/DpgfXK6fa8nEFgUonm-c0JQaAAiLOM6Pp1--6zsyrEU/https/upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_Finland.svg/1920px-Flag_of_Finland.svg.png?width=723&height=442'),
	('de-DE', 'G*rman', 'https://images-ext-1.discordapp.net/external/hciEpfONrXDyf6CUdhIzyOw-cK8-rqFbpdOCJYtWCwI/https/upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flag_of_Germany.svg/1920px-Flag_of_Germany.svg.png?width=736&height=442'),
	('li-GA', 'Gangsta Lorem Ipsum', 'https://i.kym-cdn.com/entries/icons/mobile/000/027/115/maxresdefault.jpg')

INSERT INTO Page (name) VALUES ('Frontpage')

INSERT INTO Content (name, pageID) VALUES
	('MainTitle', 1),
	('WelcomeText', 1)

INSERT INTO Translation (contentID, languageCode, text) VALUES
	(1, 'da-DK', 'Velkommen!'),
	(1, 'en-UK', 'Welcome!'),
	(1, 'fi-FI', 'Tervetuloa!'),
	(1, 'de-DE', 'VELST BEKOMMEN!'),
	(1, 'li-GA', 'Whizzle come, fo-shizzle!'),
	(2, 'da-DK', 'Goddag og velkommen til vores hjemmeside. Her vil vi gerne snakke flere sprog! Vi håber at du kan forstå hvad det er vi siger. Vores navne er Thomas og Jacob og vi studere kodning. Altså det at lave programmer og hjemmesider til din computer og telefon. På den her hjemmeside øver vi os i at skifte sprog også se hvordan det ser ud på vores hjemmeside. '),
	(2, 'en-UK', 'Hello and welcome to our website. Here we want to speak more languages! We hope you understand what we are saying. Our names are Thomas and Jacob and we study coding. That is, making programs and websites for your computer and phone. On this website, we practice changing languages and also see what it looks like on our website. '),
	(2, 'fi-FI', 'Hei ja tervetuloa sivuillemme. Täällä haluamme puhua enemmän kieliä! Toivomme, että ymmärrät, mitä tarkoitamme. Nimemme ovat Thomas ja Jacob ja opiskelemme koodausta. Toisin sanoen ohjelmien ja verkkosivujen tekeminen tietokoneellesi ja puhelimeesi. Tällä sivustolla harjoittelemme kielten vaihtamista ja katsomme myös, miltä se näyttää verkkosivuillamme.'),
	(2, 'de-DE', 'Hallo und willkommen auf unserer Website. Hier wollen wir mehr Sprachen sprechen! Wir hoffen, dass Sie verstehen, was wir sagen. Unsere Namen sind Thomas und Jacob und wir studieren Programmieren. Das heißt, Programme und Websites für Ihren Computer und Ihr Telefon zu erstellen. Auf dieser Website üben wir den Sprachwechsel und sehen auch, wie es auf unserer Website aussieht. '),
	(2, 'li-GA', 'Lorizzle ipsizzle dolizzle sit amizzle, consectetuer adipiscing yo mamma. Nullam sapien velizzle, its fo rizzle volutpizzle, suscipit for sure, brizzle vizzle, its fo rizzle. Pellentesque we gonna chung tortizzle. Sed eros. Stuff fizzle dolor dapibus turpizzle tempizzle shizznit. pellentesque nibh et turpizzle. Vestibulum izzle tortor. Gangsta mammasay mammasa mamma oo sa rhoncus fo shizzle. Izzle the bizzle habitasse bow wow wow dictumst. Dang dapibizzle.')