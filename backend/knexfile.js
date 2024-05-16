// Update with your config settings.
module.exports = {
  development: {
    // connection: process.env.DATABASE_URL,
    client: "postgres",
    connection: {
      database: "dash-dex",
      user: "postgres",
      password: "1234",
      port:5432,
      host:'localhost'
    },
    pool: {
      min: 2,
      max: 10,
    },
    useNullAsDefault: true, // used to avoid warning on console
    migrations: {
      directory: "./data/migrations",
      tableName: "dbmigrations",
    },
    seeds: { directory: "./data/seeds" },
  },
  production: {
    client: "pg",
    connection: process.env.DATABASE_URL,
    useNullAsDefault: true,
    migrations: {
      directory: "./data/migrations",
      tableName: "dbmigrations",
    },
    seeds: {
      directory: "./data/seeds",
    },
  },

  testing: {
    client: "pg",
    connection: process.env.DATABASE_TEST,
    useNullAsDefault: true,
    migrations: {
      directory: "./data/migrations",
      tableName: "dbmigrations",
    },
    seeds: {
      directory: "./data/seeds",
    },
  },
};
