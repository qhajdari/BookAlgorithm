module Book where

data Book = Book
  { bookId :: Int
  , title :: String
  , author :: String
  , genres :: [String]
  , rating :: Float
  } deriving (Show, Eq)


 --Polimorphic function --
countBy :: (a -> Bool) -> [a] -> Int
countBy _ [] = 0
countBy predicate (x:xs) =
    let restCount = length (filter predicate xs)
    in if predicate x
       then 1 + restCount
       else restCount

countAdventureBooks :: [Book] -> Int
countAdventureBooks  = countBy (\book -> "Adventure" `elem` genres book) 


--Perdoimi i rekursionit --
countBooksByGenre :: [Book] -> String -> Int
countBooksByGenre [] _ = 0
countBooksByGenre (x:xs) genre =
    let restCount = countBooksByGenre xs genre
    in if genre `elem` genres x
       then 1 + restCount
       else restCount



--Perdorimi i map --
-- applyDiscount :: Book -> Book
-- applyDiscount book = book { rating = rating book * 0.9 }
-- booksWithDiscount :: [Book] -> [Book]
-- booksWithDiscount books = map applyDiscount books

--Perdorimi i curried functions dhe map --
applyDiscount :: Float -> Book -> Book
applyDiscount discount book = book { rating = rating book * discount }


--Perdorimi i filter --
fantasyBooks :: [Book] -> [Book]
fantasyBooks  = filter (\book -> "Fantasy" `elem` genres book) 


--Perdorimi i foldr
countHighRatedBooks :: [Book] -> Int
countHighRatedBooks books = foldr (\book acc -> if rating book > 4.5 then acc + 1 else acc) 0 books







