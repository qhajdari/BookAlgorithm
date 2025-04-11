module Book where

data Book = Book
  { bookId :: Int
  , title :: String
  , author :: String
  , genres :: [String]
  , rating :: Float
  } deriving (Show, Eq)

--Perodimi i rekursionit --
countBooksByGenre :: [Book] -> String -> Int
countBooksByGenre [] _ = 0
countBooksByGenre (x:xs) genre =
    let restCount = countBooksByGenre xs genre
    in if genre `elem` genres x
       then 1 + restCount
       else restCount

--Perdorimi i map --
applyDiscount :: Book -> Book
applyDiscount book = book { rating = rating book * 0.9 }

booksWithDiscount :: [Book] -> [Book]
booksWithDiscount books = map applyDiscount books


--Perdorimi i filter --
fantasyBooks :: [Book] -> [Book]
fantasyBooks  = filter (\book -> "Fantasy" `elem` genres book) 



