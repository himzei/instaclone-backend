import client from "../client";

export default {
  Mutation: {
    createAccount: async (
      _,
      { firstName, lastName, username, eamil, password }
    ) => {
      // check if username or email are already on DB.

      const existingUser = await client.user.findFirst({
        where: {
          OR: [
            {
              username,
            },
            {
              email,
            },
          ],
        },
      });

      // hash password
      // save and return the user
    },
  },
};
