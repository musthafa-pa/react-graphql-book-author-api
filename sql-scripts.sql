####Author table data####
CREATE TABLE Authors (
    author_id VARCHAR(100) PRIMARY KEY,
    author_name VARCHAR(100),
    author_age INT,
    author_country VARCHAR(100),
    total_published_works INT,
    year_of_birth INT,
    photo VARCHAR(200)
);

INSERT INTO Authors (author_id, author_name, author_age, author_country, total_published_works, year_of_birth, photo)
VALUES 
    ('48e796b0-21f7-4e9f-a81f-835f82e7e936', 'J.K. Rowling', 55, 'United Kingdom', 15, 1965, 'https://example.com/jkrowling.jpg'),
    ('b22d56a9-8b2b-4026-a5de-06250f8a2e12', 'J.R.R. Tolkien', 81, 'United Kingdom', 20, 1892, 'https://example.com/tolkien.jpg'),
    ('66df14d8-3f0a-41ab-9154-bd5daa1d5e71', 'Suzanne Collins', 59, 'United States', 10, 1962, 'https://example.com/suzannecollins.jpg'),
    ('99e2f6c4-17af-4d10-90cc-7b335b827933', 'Stephenie Meyer', 47, 'United States', 8, 1973, 'https://example.com/stepheniemeyer.jpg'),
    ('d1a28bc6-68e6-4f0b-9b8a-fa5af17e57c7', 'C.S. Lewis', 64, 'United Kingdom', 30, 1898, 'https://example.com/cslewis.jpg'),
    ('772f2d6e-1c6c-4d4c-a6e2-1d59a3631579', 'Ian Fleming', 56, 'United Kingdom', 14, 1908, 'https://example.com/ianfleming.jpg'),
    ('fa34ce80-6a5b-4c33-9d03-5e1c65f274a2', 'Veronica Roth', 33, 'United States', 8, 1988, 'https://example.com/veronicaroth.jpg'),
    ('02df9b82-1f81-4da4-9ce3-1a305e71b89f', 'James Dashner', 50, 'United States', 10, 1972, 'https://example.com/jamesdashner.jpg'),
    ('ed215dbb-ae5c-4f60-98f3-328e9d6cde60', 'Stan Lee', 95, 'United States', 1000, 1922, 'https://example.com/stanlee.jpg'),
    ('3fe577a0-0e4f-4e7f-974f-9089e7862d9a', 'Michael Crichton', 66, 'United States', 25, 1942, 'https://example.com/michaelcrichton.jpg');


#####Books###
CREATE TABLE Books (
    book_id VARCHAR(100) PRIMARY KEY,
    book_name VARCHAR(200),
    released_year INT,
    isbn_number VARCHAR(20),
    genre VARCHAR(100),
    number_of_pages INT,
    author_id VARCHAR(100),
    FOREIGN KEY (author_id) REFERENCES Authors (author_id)
);

INSERT INTO Books (book_id, book_name, released_year, isbn_number, genre, number_of_pages, author_id)
VALUES
    -- J.K. Rowling
    ('d4ecf2a2-5e50-4a9d-a8d2-92e8d13f6e30', 'Harry Potter and the Philosopher\'s Stone', 1997, '9780747532743', 'Fantasy', 223, '48e796b0-21f7-4e9f-a81f-835f82e7e936'),
    ('fae44dd5-8f1b-4f6e-9b86-8b2926d0bc6c', 'Harry Potter and the Chamber of Secrets', 1998, '9780439064873', 'Fantasy', 251, '48e796b0-21f7-4e9f-a81f-835f82e7e936'),
    ('1b4f890a-6a06-4029-8a7e-7e5d4ab8d92e', 'Harry Potter and the Prisoner of Azkaban', 1999, '9780439136358', 'Fantasy', 317, '48e796b0-21f7-4e9f-a81f-835f82e7e936'),

    -- J.R.R. Tolkien
    ('a9873205-ff65-4753-b11f-b6f162c2b52d', 'The Hobbit', 1937, '9780007458424', 'Fantasy', 310, 'b22d56a9-8b2b-4026-a5de-06250f8a2e12'),
    ('7f86f30f-aa34-4081-bfa3-734b0781c35f', 'The Lord of the Rings: The Fellowship of the Ring', 1954, '9780547928210', 'Fantasy', 398, 'b22d56a9-8b2b-4026-a5de-06250f8a2e12'),
    ('6a342d23-6953-4ae2-9974-32e8c824bcdc', 'The Silmarillion', 1977, '9780261103665', 'Fantasy', 365, 'b22d56a9-8b2b-4026-a5de-06250f8a2e12'),

    -- Suzanne Collins
    ('44b122cc-2cbf-4ebd-99d7-03e9a7323db1', 'The Hunger Games', 2008, '9780439023481', 'Dystopian', 374, '66df14d8-3f0a-41ab-9154-bd5daa1d5e71'),
    ('6b917156-d7a2-4f44-a4ff-97ef3832004e', 'Catching Fire', 2009, '9780439023498', 'Dystopian', 391, '66df14d8-3f0a-41ab-9154-bd5daa1d5e71'),
    ('ceeb0572-4ec6-4022-b5d9-20800d5c258e', 'Mockingjay', 2010, '9780439023511', 'Dystopian', 390, '66df14d8-3f0a-41ab-9154-bd5daa1d5e71'),

    -- Stephenie Meyer
    ('d1071edf-1e4c-4a6f-b884-44ac8265b8c0', 'Twilight', 2005, '9780316160179', 'Fantasy', 498, '99e2f6c4-17af-4d10-90cc-7b335b827933'),
    ('e0c8e8e1-0b15-4405-bd07-81780f123c60', 'New Moon', 2006, '9780316160193', 'Fantasy', 563, '99e2f6c4-17af-4d10-90cc-7b335b827933'),
    ('febf56da-35eb-434f-b8ea-1d8f1b6b24ff', 'Eclipse', 2007, '9780316160209', 'Fantasy', 629, '99e2f6c4-17af-4d10-90cc-7b335b827933'),

    -- C.S. Lewis
    ('37a699f6-79fc-4028-8e76-53a7153d8bc0', 'The Lion, the Witch and the Wardrobe', 1950, '9780064471046', 'Fantasy', 206, 'd1a28bc6-68e6-4f0b-9b8a-fa5af17e57c7'),
    ('ae88e9b1-18e0-4d8e-9ab3-bb99c52a1b60', 'Prince Caspian', 1951, '9780064471053', 'Fantasy', 240, 'd1a28bc6-68e6-4f0b-9b8a-fa5af17e57c7'),
    ('4ce06454-3c6e-40fd-a9df-8a12713c673b', 'The Voyage of the Dawn Treader', 1952, '9780064471077', 'Fantasy', 288, 'd1a28bc6-68e6-4f0b-9b8a-fa5af17e57c7'),

    -- Ian Fleming
    ('14f4e8b1-4a71-4753-9420-fb2289b7419b', 'Casino Royale', 1953, '9780142002025', 'Spy fiction', 213, '772f2d6e-1c6c-4d4c-a6e2-1d59a3631579'),
    ('d6f062e2-8642-4d7a-a3df-b9f29bcf146d', 'Goldfinger', 1959, '9780142002049', 'Spy fiction', 322, '772f2d6e-1c6c-4d4c-a6e2-1d59a3631579'),
    ('823670d9-86cc-4479-a267-14ac4a0f7e2c', 'From Russia with Love', 1957, '9780142002063', 'Spy fiction', 368, '772f2d6e-1c6c-4d4c-a6e2-1d59a3631579'),

    -- Veronica Roth
    ('f870726b-5317-45b3-8b1c-c79b8b7d50e1', 'Divergent', 2011, '9780062024022', 'Dystopian', 487, 'fa34ce80-6a5b-4c33-9d03-5e1c65f274a2'),
    ('c28e1bb5-263a-48b9-9d42-bf2e4c8b9069', 'Insurgent', 2012, '9780062024046', 'Dystopian', 525, 'fa34ce80-6a5b-4c33-9d03-5e1c65f274a2'),
    ('c170cbb1-0200-42f2-a54d-38c9f7a3c25f', 'Allegiant', 2013, '9780062024060', 'Dystopian', 544, 'fa34ce80-6a5b-4c33-9d03-5e1c65f274a2'),

    -- James Dashner
    ('a2b1df8b-2dc7-4cfe-ae55-6eb13a5a1bce', 'The Maze Runner', 2009, '9780385737951', 'Science fiction', 375, '02df9b82-1f81-4da4-9ce3-1a305e71b89f'),
    ('9c3e42e2-35cc-4098-82d7-5e52d874cbe4', 'The Scorch Trials', 2010, '9780385738767', 'Science fiction', 361, '02df9b82-1f81-4da4-9ce3-1a305e71b89f'),
    ('89a4c189-6d35-4c89-9d53-4e3f8d4b4e70', 'The Death Cure', 2011, '9780385738781', 'Science fiction', 325, '02df9b82-1f81-4da4-9ce3-1a305e71b89f'),

    -- Stan Lee
    ('8cbbdb7b-7e97-4b70-b196-58dd2f83adce', 'Spider-Man: The Amazing Spider-Man', 1963, '9780785168030', 'Superhero', 160, 'ed215dbb-ae5c-4f60-98f3-328e9d6cde60'),
    ('c843c678-4cb4-4dbb-8fa5-7e57b12d5b6f', 'X-Men: The Dark Phoenix Saga', 1980, '9780785132512', 'Superhero', 200, 'ed215dbb-ae5c-4f60-98f3-328e9d6cde60'),
    ('b048bb55-1a6e-40a3-857e-7c55d4a39422', 'The Incredible Hulk: Future Imperfect', 1992, '9780785158475', 'Superhero', 144, 'ed215dbb-ae5c-4f60-98f3-328e9d6cde60'),

    -- Michael Crichton
    ('70e541e6-8241-4c10-a487-51a2f9c1a26d', 'Jurassic Park', 1990, '9780345370778', 'Science fiction', 399, '3fe577a0-0e4f-4e7f-974f-9089e7862d9a'),
    ('2b35a6f3-ff00-4ad9-bf81-fa2b1742445c', 'The Lost World', 1995, '9780345402882', 'Science fiction', 430, '3fe577a0-0e4f-4e7f-974f-9089e7862d9a'),
    ('3129ef10-ef33-4801-af47-6e4bead8e01b', 'Prey', 2002, '9780061703089', 'Science fiction', 502, '3fe577a0-0e4f-4e7f-974f-9089e7862d9a');