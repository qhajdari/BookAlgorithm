module Book where

data Book = Book
  { bookId :: Int
  , title :: String
  , author :: String
  , genres :: [String]
  , rating :: Float
  } deriving (Show, Eq)


countBooksByGenre :: [Book] -> String -> Int
countBooksByGenre [] _ = 0
countBooksByGenre (x:xs) genre =
    let restCount = countBooksByGenre xs genre
    in if genre `elem` genres x
       then 1 + restCount
       else restCount


applyDiscount :: Book -> Book
applyDiscount book = book { rating = rating book * 0.9 }

booksWithDiscount :: [Book] -> [Book]
booksWithDiscount books = map applyDiscount books
