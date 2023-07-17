const express = require("express");
const { ApolloServer } = require("apollo-server-express");
const { resolvers } = require("./resolvers/index");
const { typeDefs } = require("./modals/typeDefs");
const db = require("./modals/sequelize.modal");

const app = express();
const server = new ApolloServer({ resolvers, typeDefs });

server.start().then((res) => {
  db.sequelize.sync({ force: false }).then(() => {
    console.log("DB SYNC SUCCESS");
  });
  server.applyMiddleware({ app });
  app.listen({ port: 4000 }, () => {
    console.log(`Graphql server is running at PORT ${4000}/graphql`);
  });
});
