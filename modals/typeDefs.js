const { gql } = require("apollo-server-express");

const typeDefs = gql`
  type Author {
    author_id: String
    author_name: String
    author_age: Int
    author_country: String
    total_published_works: Int
    year_of_birth: Int
    photo: Int
    books: [Book]
  }

  type Book {
    book_id: String
    book_name: String
    released_year: Int
    genre: String
    number_of_pages: Int
    author_id: String
    isbn_number: String
  }

  input AuthorInput {
    author_id: String
    author_name: String
    author_age: Int
    author_country: String
    total_published_works: Int
    year_of_birth: Int
    photo: String
  }

  input BookInput {
    book_id: String
    book_name: String
    released_year: Int
    genre: String
    number_of_pages: Int
    author_id: String
    isbn_number: String
  }

  type Query {
    hello: String
    getAuthors: [Author]!
  }

  type Mutation {
    hello: String
    createAuthor(input: AuthorInput): Author!
    createBooks(input: BookInput): Book!
  }
`;

module.exports = { typeDefs };
