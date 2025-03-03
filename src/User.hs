module User where

import Book

data User = User
  { userId :: Int
  , history :: [Book]
  } deriving (Show)