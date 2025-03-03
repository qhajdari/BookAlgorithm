module Book where

data Book = Book
  { bookId :: Int
  , title :: String
  , author :: String
  , genre :: String
  } deriving (Show, Eq)