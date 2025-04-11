module Main where

import Book
import User
import Recommendation

main :: IO ()
main = do
  let book1 = Book { bookId = 1, title = "Book A", author = "Author X", genres = ["Fantasy", "Adventure"], rating = 4.7}
      book2 = Book { bookId = 2, title = "Book B", author = "Author Y", genres = ["Drama"], rating = 4.8}
      book3 = Book { bookId = 3, title = "Book C", author = "Author X", genres = ["Fantasy", "Drama"], rating = 4.8}
      
      books = [book1, book2, book3]
      titles = map title books
      
      totalDrama = countBooksByGenre books "Drama"

      discountedBooks = map applyDiscount books

      fantasyBooksList = fantasyBooks books

      
      user = User { userId = 1, history = [book1] }
      similarityMatrix = generateSimilarityMatrix books
      recommendations = recommendBooks user similarityMatrix
  
  putStrLn ("Book titles: " ++ show titles)
  putStrLn ("Recommendations based on user history:" ++ show recommendations)
  putStrLn ("Total number of Drama books: " ++ show totalDrama)
  putStrLn ("Books with discount: " ++ show discountedBooks)
  putStrLn ("Fantasy books: " ++ show fantasyBooksList)


