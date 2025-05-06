module User where

import Book

data User = User
  { userId :: Int
  , name :: String
  , history :: [Book]
  } deriving (Show)