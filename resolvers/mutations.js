const { createAuthor } = require("../services/author.services");
const { createBooks } = require("../services/book.services");

const MutationResolver = {
  Mutation: {
    hello: () => {
      return `Hello graphl API mutation`;
    },
    createAuthor: (parent, args, context, info) => createAuthor(args, info),
    createBooks: (parent, args, context, info) => createBooks(args, info),
  },
};

module.exports = { MutationResolver };
