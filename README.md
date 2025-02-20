# Book Lending Library

A simple book lending library application built using Ruby on Rails 8. This application allows users to manage books, track borrowing history, and return books without requiring authentication. It serves as a basic demonstration of CRUD operations and borrowing system functionality.

## Features
- Add, edit, and delete books (CRUD operations)
- View a list of all books
- View details of a specific book, including its borrowing history
- Borrow and return books, with a prompt for borrower details
- View a borrower's lending history

## Screenshots
### 1. Add a New Book
![ADD NEW BOOK](https://github.com/user-attachments/assets/265126b2-44d5-4c47-be63-f8863535300b)


### 2. Edit a Book
![EDIT BOOK](https://github.com/user-attachments/assets/d993891b-4b7a-4264-94db-50934d763764)


### 3. View All Books
![VIEW ALL BOOKS](https://github.com/user-attachments/assets/92812d3b-489c-42ce-bc78-e6d68458518c)


### 4. View Individual Book Details (including borrow & return history)
![INDIVIDUAL BOOK DETAILS(INCLUDING  BORROW RETURN HISTORY)](https://github.com/user-attachments/assets/a20e2070-e44f-4389-8898-0ea3fcd0b8ac)


### 5. Borrow a Book
![BORROW A BOOK](https://github.com/user-attachments/assets/8a3c37dd-2a81-4d58-8840-9dea32d58b4d)


### 6. Return a Book
![RETURN A BOOK](https://github.com/user-attachments/assets/4bb414e3-fe0c-49be-834f-a443b03af1ee)


## Installation & Setup

1. Clone the repository:
   ```sh
   git clone https://github.com/ALLANSILOMA/Book-Lending-Library.git
   cd Book-Lending-Library
   ```

2. Install dependencies:
   ```sh
   bundle install
   ```

3. Set up the database:
   ```sh
   rails db:create db:migrate db:seed
   ```

4. Start the Rails server:
   ```sh
   rails server
   ```

5. Open the application in your browser at:
   ```sh
   http://localhost:3000
   ```

## Running Tests
To run the test suite, use:
```sh
rails test
```

## Contributing
This project is open for contributions! Feel free to **fork** the repository, create a new branch, and submit a pull request with your improvements.

1. Fork the project
2. Create your feature branch (`git checkout -b feature-branch`)
3. Commit your changes (`git commit -m 'Add new feature'`)
4. Push to the branch (`git push origin feature-branch`)
5. Open a pull request

## License
This project is open-source and available under the MIT License

---

Happy coding! 🚀

