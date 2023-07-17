const { Book } = require("../modals/sequelize.modal");

const createBooks = async (args, info) => {
  let bookInput = args.input;
  try {
    let book = await Book.create(bookInput);
    return book;
  } catch (error) {
    throw Error(error);
  }
};

module.exports = { createBooks };
