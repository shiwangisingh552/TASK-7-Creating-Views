A. CREATE Books TABLE :
         CREATE TABLE Books (
         BookID INTEGER PRIMARY KEY,
         Title TEXT,
         Author TEXT,
         Genre TEXT,
         Available BOOLEAN
);

B. TO CREATE A VIEWS TO SHOW ONLY AVAILABLE BOOKS

    CREATE VIEW AvailableBooks:
        SELECT BookID, Title, Author
        FROM Books
        WHERE Available = 1;  

    SELECT * FROM AvailableBooks;

C. JOINING A VIEWS WITH ANOTHER TABLE

      SELECT b.Name, ab.Title
      FROM Borrowers b
      JOIN AvailableBooks ab ON b.FavoriteBookID = ab.BookID;
