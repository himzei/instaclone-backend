import { gql } from "apollo-server-core";

export default gql`
  type User {
    id: String!
    firstName: String!
    lastName: String
    username: String!
    eamil: String!
    createdAt: String!
    updatedAt: String!
  }
  type Mutation {
    createAccount(
      firstName: String!
      lastName: String
      username: String!
      eamil: String!
      password: String!
    ): User
  }
  type Query {
    seeProfile(username: String!): User
  }
`;
