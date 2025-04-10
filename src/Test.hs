module Test where

import Test.HUnit
import Book -- Import the Book module

exampleBooks :: [Book]
exampleBooks = [
    Book { bookId = 1, title = "Book A", author = "Author X", genres = ["Fantasy"], rating = 4.7 },
    Book { bookId = 2, title = "Book B", author = "Author Y", genres = ["Drama"], rating = 4.8 },
    Book { bookId = 3, title = "Book C", author = "Author X", genres = ["Fantasy"], rating = 4.8 }
  ]


testBookTitle :: Test
testBookTitle = TestCase (assertEqual "Title should be 'Book A'" "Book A" (title (head exampleBooks)))

testBookCount :: Test
testBookCount = TestCase (assertEqual "Should have 3 books in the list" 3 (length exampleBooks))

tests :: Test
tests = TestList [testBookTitle, testBookCount]

main :: IO ()
main = runTestTTAndExit tests
