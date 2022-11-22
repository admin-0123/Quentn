export default ({ env }) => ({
  connection: {
    client: 'postgres',
    connection: {
      host: env('DATABASE_HOST', 'dabase'),
      port: env.int('DATABASE_PORT', 5432),
      database: env('DATABASE_NAME', 'quentn'),
      user: env('DATABASE_USERNAME', 'postgres'),
      password: env('DATABASE_PASSWORD', 'Jackson@0123'),
      ssl: env.bool('DATABASE_SSL', false),
    },
  },
});
