# BookAlgorithm/Book Recommandation System


## Description
**BookAlgorithm** is a book recommendation system developed in **Haskell**. This project uses simple models to suggest books based on user ratings and preferences. 
It applies fundamental concepts of functional programming to manage books, recommend titles based on genres and ratings, and perform various book-related queries.

This project showcases the use of:
- Algebraic data types
- Pattern matching
- High-order functions (map, filter, foldr)
- Recursion
- Parametric polymorphism
- Curried functions
- Automated testing with HUnit

---

## Features
- Registration and management of books.
- Book recommendations based on user reading history and book similarity.
- Filtering and transforming book collections.
- Counting books by genre, by high ratings, or by custom conditions.
- Applying discounts to book ratings (using curried functions).
- Integrated unit tests with HUnit.

---

## 🔧 Key Functions Implemented

| Function | Purpose |
|:---------|:--------|
| `countBy` | A polymorphic and recursive function that counts elements matching a given predicate. |
| `countBooksByGenre` | Recursively counts how many books belong to a given genre. |
| `applyDiscount` | A curried function that applies a discount factor to a book's rating. |
| `fantasyBooks` | Filters books to only those in the "Fantasy" genre using `filter`. |
| `countHighRatedBooks` | Counts books with rating > 4.5 using `foldr`. |
| `generateSimilarityMatrix` | Builds a similarity matrix between books based on shared genres/authors. |
| `recommendBooks` | Recommends books based on user history and similarity scores. |

---

## 🛠 Installation

### 1. Clone the Repository
```bash
git clone https://github.com/qhajdari/BookAlgorithm.git
cd BookAlgorithm


## Installation
Make sure you have **GHC**, **Cabal**, and the necessary dependencies installed to run the project.

### 1. Clone the Project
```sh
 git clone https://github.com/qhajdari/BookAlgorithm.git
 cd BookAlgorithm
```

### 2. Build the Project
```sh
 cabal build
```

### 3. Run the Project
```sh
 cabal run
```

### 4. Testing
```sh
 cabal test
```

## Project Structure
```
BookAlgorithm/
│── src/
│   ├── Main.hs        # Main function
│   ├── Book.hs        # Book module
│   ├── Recommandation.hs        # Recommandation module    
│   ├── User.hs        # User module    
│   ├── Test.hs        # Project tests
│── BookAlgorithm.cabal # Cabal configuration
│── README.md          # This README file
```
:load src/Main.hs
main
```

## Technologies Used
- Haskell
- GHC (Glasgow Haskell Compiler)
- Cabal for package management
- HUnit for testing

## Contribution
If you want to contribute, follow these steps:
1. **Fork** the project.
2. Create a new **branch**.
3. Add improvements and make a **commit**.
4. Submit a **pull request**.

## License
This project is licensed under the **MIT License**.

---
💡 *This project is under development, so we welcome suggestions and improvements!*

