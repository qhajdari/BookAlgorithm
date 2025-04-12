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

      -- discountedBooks = map applyDiscount books

      applyDiscount10 = applyDiscount 0.9
      booksWithDiscount = map applyDiscount10 books

      fantasyBooksList = fantasyBooks books

      highRatedCount = countHighRatedBooks books

      
      user = User { userId = 1, history = [book1] }
      similarityMatrix = generateSimilarityMatrix books
      recommendations = recommendBooks user similarityMatrix
  
  putStrLn ("1. Book titles: " ++ show titles)
  putStrLn ("2. Recommendations based on user history:" ++ show recommendations)
  putStrLn ("3. Total number of Drama books: " ++ show totalDrama)
  putStrLn ("4. Books with discount: " ++ show booksWithDiscount)
  putStrLn ("5. Fantasy books: " ++ show fantasyBooksList)
  putStrLn ("6. Count books with rating > 4.5: " ++ show highRatedCount)


