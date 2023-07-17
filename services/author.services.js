const { Author, Book } = require("../modals/sequelize.modal");

const getAuthors = async () => {
  try {
    let authors = await Author.findAll({
      include: [
        {
          model: Book,
          as: "books",
        },
      ],
    });

    return authors;
  } catch (error) {
    throw Error(error);
  }
};

const createAuthor = async (args, info) => {
  let input = args.input;
  try {
    let author = await Author.create(input);
    return author;
  } catch (error) {
    throw Error(error);
  }
};

module.exports = { getAuthors, createAuthor };
