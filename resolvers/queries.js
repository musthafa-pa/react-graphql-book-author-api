const { getAuthors } = require("../services/author.services");

const QueryResolver = {
  Query: {
    hello: () => `Hello Graphql API`,
    getAuthors: () => getAuthors(),
  },
};

module.exports = { QueryResolver };
