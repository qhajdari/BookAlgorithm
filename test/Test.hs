module Main where

import Test.HUnit
import Book
import User
import Recommendation


book1 :: Book
book1 = Book { bookId = 1, title = "Book A", author = "Author X", genres = ["Fantasy", "Adventure"], rating = 4.7 }

book2 :: Book
book2 = Book { bookId = 2, title = "Book B", author = "Author Y", genres = ["Drama"], rating = 4.8 }

book3 :: Book
book3 = Book { bookId = 3, title = "Book C", author = "Author X", genres = ["Fantasy"], rating = 4.8 }

exampleBooks :: [Book]
exampleBooks = [book1, book2, book3]

-- Test 1: Test function BookTitle --
testBookTitle :: Test
testBookTitle = TestCase (assertEqual "Title should be 'Book A'" "Book A" (title (head exampleBooks)))

-- Test 2: Test function BookCount --
testBookCount :: Test
testBookCount = TestCase (assertEqual "Should have 3 books in the list" 3 (length exampleBooks))

-- Test 3: Test function countAdventureBooks --
testCountAdventure :: Test
testCountAdventure = TestCase (assertEqual "Should be 1 Adventure books" 1 (countAdventureBooks exampleBooks))

-- Test 4: Test function countBooksByGenre for 'Fantasy' --
testCountFantasy :: Test
testCountFantasy = TestCase (assertEqual "Should be 2 Fantasy books" 2 (countBooksByGenre exampleBooks "Fantasy"))

-- Test 5: Test for Maybe - Book exists
testFindBookSuccess :: Test
testFindBookSuccess = TestCase $
  assertEqual "Book with ID 1 should be found"
    (Just book1)
    (findBookById 1 exampleBooks)

-- Test 6: Test for Maybe - Book does not exist
testFindBookFail :: Test
testFindBookFail = TestCase $
  assertEqual "Book with ID 99 should not be found"
    Nothing
    (findBookById 99 exampleBooks)



tests :: Test
tests = TestList
  [ TestLabel "Test Book Title" testBookTitle
  , TestLabel "Test Book Count" testBookCount
  , TestLabel "Test Count Adventure Books" testCountAdventure
  , TestLabel "Test Count Fantasy Books" testCountFantasy
  , TestLabel "Test Find Book Exists" testFindBookSuccess
  , TestLabel "Test Find Book Missing" testFindBookFail
  ]

main :: IO ()
main = runTestTTAndExit tests
