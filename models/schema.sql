DROP DATABASE IF EXISTS beverage_index;    
CREATE DATABASE beverage_index;            

\c beverage_index


-- Create Table beverages(
-- 		ID SERIAL PRIMARY KEY,
-- 		name VARCHAR,
-- 		description VARCHAR,
-- 		fid INTEGER,
-- 		Company VARCHAR,
-- 		style VARCHAR,
-- 		type VARCHAR

-- );
CREATE TABLE styles (              
        ID SERIAL PRIMARY KEY,      
        name VARCHAR,
        description VARCHAR
        
);

CREATE TABLE food_pairings (
		ID SERIAL PRIMARY KEY,
		name VARCHAR,
		description VARCHAR
);

CREATE TABLE wines (
		ID SERIAL PRIMARY KEY,
		name VARCHAR,
		description VARCHAR,
		Fid INTEGER
);

CREATE TABLE beers (
		ID SERIAL PRIMARY KEY,
		name VARCHAR,
		description VARCHAR,
		Fid INTEGER,
		style VARCHAR,
		company VARCHAR

);

CREATE TABLE waters (
		ID SERIAL PRIMARY KEY,
		name VARCHAR,
		description VARCHAR,
		Fid INTEGER
);

CREATE TABLE related (
		ID SERIAL PRIMARY KEY,
		name VARCHAR,
		description VARCHAR,
		Rid INTEGER
);


-- INSERT INTO beverages(name, description, fid, company, style, type) VALUES
-- ('Chardonnay','Chardonnay is a green-skinned grape variety used in the production of white wine. The variety originated in the Burgundy wine region of eastern France, but is now grown wherever wine is produced, from England to New Zealand.',1,'wine'),

-- ('Pinot noir', 'Pinot noir is a red wine grape variety of the species Vitis vinifera. The name may also refer to wines created predominantly from Pinot noir grapes.',4,'wine'),

-- ('Sauvignon blanc', 'Sauvignon blanc is a green-skinned grape variety that originates from the Bordeaux region of France. The grape most likely gets its name from the French words sauvage and blanc due to its early origins as an indigenous grape in South West France',3,'wine'),

-- ('Cabernet Sauvignon', 'Cabernet Sauvignon is one of the worlds most widely recognized red wine grape varieties. It is grown in nearly every major wine producing country among a diverse spectrum of climates from Canadas Okanagan Valley to Lebanons Beqaa Valley',3,'wine'),

-- ('Merlot','Merlot is a dark blue-colored wine grape variety, that is used as both a blending grape and for varietal wines',3,'wine'),

-- ('Gewürztraminer', 'Many grape names redirect here. Gewürztraminer is an aromatic wine grape variety, used in white wines, and performs best in cooler climates. In English, it is sometimes referred to colloquially as Gewürz, and in French it is written Gewurztraminer.',3,'wine'),

-- ('Sangiovese', 'Sangiovese is a red Italian wine grape variety that derives its name from the Latin sanguis Jovis, "the blood of Jupiter"', 3,'wine'),

-- ('Rosé', 'A rosé is a type of wine that incorporates some of the color from the grape skins, but not enough to qualify it as a red wine. It may be the oldest known type of wine, as it is the most straightforward to make with the skin contact method',3,'wine'),

-- ('Zinfandel', 'Zinfandel is a variety of black-skinned wine grape. The variety is grown in over 10 percent of California vineyards',3,'wine'),

-- ('Anderson Valley', 'fruity, with a bitter taste', 1, 'Sour','Beer'),

-- ('Evil Twin Double Barrel Jesus', 'thick fudge-like body, pitch black color, amazingly overwhelming aromas of chocolate, coffee, dark fruits and muscovado sugar and by all means aged in barrels and blended into a this very unique and rare tasting version standing in front of you. ', 1, 'American Double / Imperial Stout','Beer'),

-- ('Miller Lite', 'Miller Lite is the original light beer. Frederick Miller had an idea that a beer could be light but didnt have to sacrifice on taste, and weve held true to that idea since 1975. ', 3, ' pilsner light beer ','Beer'),

-- ('Bud ', 'Budweiser is an American-style pale lager produced by Anheuser-Busch, currently part of the multinational corporation Anheuser-Busch InBev.', 3, ' American-style pale lager','Beer' ),

-- ('coors light', 'Coors Light is a 4.2% ABV light beer brewed in Golden, Colorado and Milwaukee, Wisconsin. It was first produced in 1978 by the Coors Brewing Company', 3, ' light beer','Beer'),

-- ('YARDS IPA', 'Standing firmly on the east coast end of American IPAs, our India Pale Ale emphasizes balance. Traditional floor-malted English barley gives IPA its firm malt character while generous amounts of Chinook and Amarillo hops impart aromas of pine and tangerine for a perfectly balanced IPA.', 4, 'IPA','Beer'),

-- ('YARDS ESA', 'Our first-ever and most-beloved brew, ESA helped establish a following for cask-conditioned beer in the United States back in the ‘90s. East Kent Golding hops give this British-inspired ale a subtle spiciness, which complements the strong malt backbone. ESA is floral, earthy and smooth with hints of chocolate and caramel, rounding out this deep chestnut-colored ale', 4, 'English Ale','Beer'),

-- ('PETRUS SOUR QUAD ', 'From the innovators at Brouwerij De Brabandere we have something totally new: a Sour Quad. The Petrus Sour Quad is a limited edition blend of quadruple and 30% Petrus Aged Pale. The quadruple is a complex, dark, malty beer made from 5 different malts. Adding Petrus Aged Pale, pure foeder beer, to the full bodied strong quadruple creates a refreshing and complex taste.', 6, 'QUAD','Beer'),

-- ('60 minute IPA', '60 Minute is brewed with a slew of great Northwest hops. A powerful but balanced East Coast IPA with a lot of citrusy hop character, it’s the session beer for hardcore enthusiasts!', 4, 'IPA','Beer'),

-- ('90 minute IPA', 'Esquire Magazine calls our 90 Minute I.I.PA., "perhaps the best I.P.A. in America." An Imperial I.P.A. brewed to be savored from a snifter. A big beer with a great malt backbone that stands up to the extreme hopping rate. This beer is an excellent candidate for use with Randall The Enamel Animal! ', 4, 'Imperial IPA','Beer'),

-- ('Miller High Life', 'THERE’S A WHOLE LOT OF TRADITION THAT GOES INTO MAKING MILLER HIGH LIFE. WE BREW THE GOLDEN PILSNER WITH THE YEAST OUR FOUNDER BROUGHT OVER FROM GERMANY, LIGHT STABLE GALENA HOPS FROM THE PACIFIC NORTHWEST, AND A SELECT COMBINATION OF MALTED BARLEY. THIS COMBINATION MADE IT A FAVORITE IN 1903, AND IT REMAINS ONE TODAY.', 1, 'American-style Pilsner','Beer'),

-- ('Heinken', 'Heineken Lager Beer, or simply Heineken is a pale lager beer with 5% alcohol by volume produced by the Dutch brewing company Heineken International. Heineken is well known for its signature green bottle and red star', 3, 'pale lager beer','Beer'),

-- ('Summer Shandy', 'Leinenkugels Summer Shandy is our traditional weiss beer with refreshing natural lemonade flavor that makes it the perfect summer beer', 4, 'weiss beer','Beer');


INSERT INTO styles(name, description) VALUES  
('Sour', 'the best'); 

INSERT INTO food_pairings(name, description) VALUES
('fish', 'good pairing');

INSERT INTO wines(name, description, Fid) VALUES
('red', 'sweet', 1),
('Chardonnay','Chardonnay is a green-skinned grape variety used in the production of white wine. The variety originated in the Burgundy wine region of eastern France, but is now grown wherever wine is produced, from England to New Zealand.',1),
('Pinot noir', 'Pinot noir is a red wine grape variety of the species Vitis vinifera. The name may also refer to wines created predominantly from Pinot noir grapes.',4),
('Sauvignon blanc', 'Sauvignon blanc is a green-skinned grape variety that originates from the Bordeaux region of France. The grape most likely gets its name from the French words sauvage and blanc due to its early origins as an indigenous grape in South West France',3),
('Cabernet Sauvignon', 'Cabernet Sauvignon is one of the worlds most widely recognized red wine grape varieties. It is grown in nearly every major wine producing country among a diverse spectrum of climates from Canadas Okanagan Valley to Lebanons Beqaa Valley',3),
('Merlot','Merlot is a dark blue-colored wine grape variety, that is used as both a blending grape and for varietal wines',3),
('Gewürztraminer', 'Many grape names redirect here. Gewürztraminer is an aromatic wine grape variety, used in white wines, and performs best in cooler climates. In English, it is sometimes referred to colloquially as Gewürz, and in French it is written Gewurztraminer.',3),
('Sangiovese', 'Sangiovese is a red Italian wine grape variety that derives its name from the Latin sanguis Jovis, "the blood of Jupiter"', 3),
('Rosé', 'A rosé is a type of wine that incorporates some of the color from the grape skins, but not enough to qualify it as a red wine. It may be the oldest known type of wine, as it is the most straightforward to make with the skin contact method',3),
('Zinfandel', 'Zinfandel is a variety of black-skinned wine grape. The variety is grown in over 10 percent of California vineyards',3);

INSERT INTO beers(name, description, Fid, style) VALUES
('Anderson Valley', 'fruity, with a bitter taste', 1, 'Sour'),
('Evil Twin Double Barrel Jesus', 'thick fudge-like body, pitch black color, amazingly overwhelming aromas of chocolate, coffee, dark fruits and muscovado sugar and by all means aged in barrels and blended into a this very unique and rare tasting version standing in front of you. ', 1, 'American Double / Imperial Stout'),
('Miller Lite', 'Miller Lite is the original light beer. Frederick Miller had an idea that a beer could be light but didnt have to sacrifice on taste, and weve held true to that idea since 1975. ', 3, ' pilsner light beer '),
('Bud ', 'Budweiser is an American-style pale lager produced by Anheuser-Busch, currently part of the multinational corporation Anheuser-Busch InBev.', 3, ' American-style pale lager' ),
('coors light', 'Coors Light is a 4.2% ABV light beer brewed in Golden, Colorado and Milwaukee, Wisconsin. It was first produced in 1978 by the Coors Brewing Company', 3, ' light beer'),
('YARDS IPA', 'Standing firmly on the east coast end of American IPAs, our India Pale Ale emphasizes balance. Traditional floor-malted English barley gives IPA its firm malt character while generous amounts of Chinook and Amarillo hops impart aromas of pine and tangerine for a perfectly balanced IPA.', 4, 'IPA'),
('YARDS ESA', 'Our first-ever and most-beloved brew, ESA helped establish a following for cask-conditioned beer in the United States back in the ‘90s. East Kent Golding hops give this British-inspired ale a subtle spiciness, which complements the strong malt backbone. ESA is floral, earthy and smooth with hints of chocolate and caramel, rounding out this deep chestnut-colored ale', 4, 'English Ale'),
('PETRUS SOUR QUAD ', 'From the innovators at Brouwerij De Brabandere we have something totally new: a Sour Quad. The Petrus Sour Quad is a limited edition blend of quadruple and 30% Petrus Aged Pale. The quadruple is a complex, dark, malty beer made from 5 different malts. Adding Petrus Aged Pale, pure foeder beer, to the full bodied strong quadruple creates a refreshing and complex taste.', 6, 'QUAD'),
('60 minute IPA', '60 Minute is brewed with a slew of great Northwest hops. A powerful but balanced East Coast IPA with a lot of citrusy hop character, it’s the session beer for hardcore enthusiasts!', 4, 'IPA'),
('90 minute IPA', 'Esquire Magazine calls our 90 Minute I.I.PA., "perhaps the best I.P.A. in America." An Imperial I.P.A. brewed to be savored from a snifter. A big beer with a great malt backbone that stands up to the extreme hopping rate. This beer is an excellent candidate for use with Randall The Enamel Animal! ', 4, 'Imperial IPA'),
('Miller High Life', 'THERE’S A WHOLE LOT OF TRADITION THAT GOES INTO MAKING MILLER HIGH LIFE. WE BREW THE GOLDEN PILSNER WITH THE YEAST OUR FOUNDER BROUGHT OVER FROM GERMANY, LIGHT STABLE GALENA HOPS FROM THE PACIFIC NORTHWEST, AND A SELECT COMBINATION OF MALTED BARLEY. THIS COMBINATION MADE IT A FAVORITE IN 1903, AND IT REMAINS ONE TODAY.', 1, 'American-style Pilsner'),
('Heinken', 'Heineken Lager Beer, or simply Heineken is a pale lager beer with 5% alcohol by volume produced by the Dutch brewing company Heineken International. Heineken is well known for its signature green bottle and red star', 3, 'pale lager beer'),
('Summer Shandy', 'Leinenkugels Summer Shandy is our traditional weiss beer with refreshing natural lemonade flavor that makes it the perfect summer beer', 4, 'weiss beer');

INSERT INTO waters(name, description, Fid) VALUES
('deer park', 'wet', 1);

INSERT INTO related(name, description, Rid) VALUES
('ipa', 'hoppy', 1)
