CREATE TABLE categories (
	id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(20),
	description VARCHAR(100)
);


CREATE TABLE items (
	id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(100),
	description VARCHAR(100),
	category INTEGER references categories(id),
	price DECIMAL,
	number_in_stock INTEGER
);


-- create categories

INSERT INTO categories (name, description)
VALUES
	('Sets', 'Various styles of chess boards and pieces, for tournament and casual players'),
	('Clocks', 'High-quality chess clocks - from analog to digital, and touch to button'),
	('Books', 'Expand your chess knowledge and become a stonger player by reading these classics'),
	('Miscellaneous', 'Accessories perfect for a tournament player');


-- create items (chess sets)

INSERT INTO items (name, description, category, price, number_in_stock)
VALUES
	('Tournament Chess Pieces and Board - Single Weighted', 'Vinyl, 2.25 inch squares', 1, 15.95, 5),
	('Tournament Chess Pieces and Board - Solid Plastic', 'Vinyl, 2.25 inch squares', 1, 16.95, 5),
	('Tournament Chess Pieces and Board - Triple Weighted', 'Vinyl, 2.25 inch squares', 1, 19.95, 5),
	('Tournament Chess Pieces and Silicone Board - Single Weighted', 'Silicone, 2.25 inch squares', 1, 19.95, 5),
	('Tournament Chess Pieces and Silicone Board - Triple Weighted', 'Silicone, 2.25 inch squares', 1, 23.95, 5),
	('Tournament Chess Pieces and Mousepad Board - Single Weighted', 'Mouse pad, 2.25 inch squares', 1, 17.95, 5),
	('Tournament Chess Pieces and Mousepad Board - Triple Weighted', 'Mouse pad, 2.25 inch squares', 1, 21.95, 5),
	('Wooden Chess Set', 'Wooden', 1, 32.99, 5),
	('Magnetic Wooden Chess Set', '15 inches, 2 extra queens, folding board', 1, 29.99, 5),
	('Fine Glass Chess Set', 'Glass', 1, 23.99, 5);
	
	
-- create items (chess clocks)

INSERT INTO items (name, description, category, price, number_in_stock)
VALUES
	('DGT North American Digital Chess Clock', '10 pre-set time controls', 2, 54.95, 5),
	('DGT 3000 Digital Chess Clock', '25 pre-set time controls', 2, 94.95, 5),
	('DGT 3000 Digital Chess Clock - LIMITED EDITION', '25 pre-set time controls', 2, 94.95, 5),
	('Chronos GX Digital Game Clock - Button', '8 preset tournament controls', 2, 109.95, 5),
	('Chronos GX Digital Game Clock - Touch', '8 preset tournament controls', 2, 109.95, 5),
	('ZMart Pro Digital Chess Clock', 'Metal case', 2, 87.95, 5),
	('Regulation Wooden Mechanical Chess Clock', 'Quiet', 2, 26.95, 5),
	('Regulation Plastic Mechanical Chess Clock', 'Quiet', 2, 24.95, 5),
	('INSA Wooden Mechanical Chess Clock', 'Quiet', 2, 99.95, 5),
	('BHB Special Mechanical Chess Clock', 'Quiet', 2, 99.95, 5);


-- create items (chess books)

INSERT INTO items (name, description, category, price, number_in_stock)
VALUES
	('My Great Predecessors (BUNDLE) by Garry Kasparov', 'Legendary player', 3, 80.95, 5),
	('My 60 Memorable Games by Bobby Fischer', 'Greatest chess player', 3, 20.42, 5),
	('My System by Aron Nimzowitsch', 'Fundamentals of chess strategy', 3, 17.50, 5),
	('Zurich International Chess Tournament, 1953 by David Bronstein', 'Famous tournament', 3, 15.85, 5),
	('How to Reassess Your Chess by Jeremy Silman', 'Positional chess', 3, 24.01, 5),
	('Think Like a Grandmaster by Alexander Kotov', 'Grandmaster', 3, 0, 5),
	('The Life and Games of Mikhail Tal by Mikhail Tal', 'Greatest attacking player', 3, 19.97, 5),
	('Art of Attack in Chess by Vladimir Vukovic', 'Learn how to attack', 3, 18.99, 5),
	('Dvoretsky''s Endgame Manual by Mark Dvoretsky', 'Improve your endgames', 3, 0, 5),
	('Chess: 5334 Problems, Combinations, and Games by Laszlo Polgar', 'Tactics and strategy puzzles', 3, 19.89, 5);


-- create items (miscellaneous)

INSERT INTO items (name, description, category, price, number_in_stock)
VALUES
	('Chess Players Score Pad', '50 sheets, spaces for 60 moves each game', 4, 2.95, 5),
	('Softcover Quality Scorebook', '50 games, 100 moves and diagram', 4, 3.95, 5),
	('Hardcover Chess Score Book', '100 chess games, each game holds 80 moves', 4, 6.95, 5),
	('Luxury Hard Cover Scorebook', '100 games, 80 moves', 4, 11.95, 5),
	('Basic Chess Bag', '8.5 inches x 6.5 inches', 4, 4.95, 5),
	('Standard Chess Bag', '12 inches x 9 inches', 4, 6.95, 5),
	('Quiver Chess Bag', '21 inches x 6 inches', 4, 7.95, 5),
	('Competition Chess bag', '22.5 inches x 8.5 inches', 4, 11.95, 5),
	('Chronos GX Clock Carrying Bag', 'Heavily padded, hand strap', 4, 11.95, 5),
	('Wedge Chess Clock Bag', 'Durable nylon, well padded, carrying handle', 4, 14.95, 5);


