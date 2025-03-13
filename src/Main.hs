module Main where

import Book
import User
import Recommendation

main :: IO ()
main = do
  let book1 = Book { bookId = 1, title = "Book A", author = "Author X", genre = "Fantasy" }
      book2 = Book { bookId = 2, title = "Book B", author = "Author Y", genre = "Drama" }
      book3 = Book { bookId = 3, title = "Book C", author = "Author X", genre = "Fantasy" }
      user = User { userId = 1, history = [book1] }
      similarityMatrix = generateSimilarityMatrix [book1, book2, book3]
      recommendations = recommendBooks user similarityMatrix
  print recommendations