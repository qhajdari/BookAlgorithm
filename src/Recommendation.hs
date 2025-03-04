module Recommendation where

import Book
import User
import Data.List (nub)

calculateSimilarity :: Book -> Book -> Double
calculateSimilarity book1 book2
  | genre book1 == genre book2 = 0.8
  | author book1 == author book2 = 0.5
  | otherwise = 0.1

generateSimilarityMatrix :: [Book] -> [(Book, Book, Double)]
generateSimilarityMatrix books = 
  [(b1, b2, calculateSimilarity b1 b2) | b1 <- books, b2 <- books, b1 /= b2]

recommendBooks :: User -> [(Book, Book, Double)] -> [Book]
recommendBooks user matrix = 
  let userHistory = history user
      similarBooks = [b2 | (b1, b2, sim) <- matrix, b1 `elem` userHistory, sim > 0.5, b2 `notElem` userHistory]
  in nub similarBooks
