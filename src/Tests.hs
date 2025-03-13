module Tests where

import Tests.HUnit
import Book -- Import the Book module to test the Book data type

-- A function to test/generate a list of example books
exampleBooks :: [Book]
exampleBooks = [
    Book 1 "Book A" ["Fantasy"] 4.7,
    Book 2 "Book B" ["Drama"] 4.8
    Book 2 "Book C" ["Fantasy"] 4.8
  ]

-- Test: check if the title of the book is correct
testBookTitle :: Test
testBookTitle = TestCase (assertEqual "Title book should be 'Book A" (title (head exampleBooks)))

-- Test: check if the number of books in the list is correct
testBookCount :: Test
testBookCount = TestCase (assertEqual "Should have 3 books in the list"
                        2 (length exampleBooks))

-- Tests list
tests :: Test
tests = TestList [testBookTitle, testBookCount]

-- Main function to run the tests
main :: IO ()
main = runTestTTAndExit tests
