use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ueberauth_example, UeberauthExampleWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :ueberauth_example, UeberauthExample.Repo,
  username: "postgres",
  password: "postgres",
  database: "ueberauth_example_test",
  hostname: "localhost",
  adapter: Ecto.Adapters.Postgres,
  pool: Ecto.Adapters.SQL.Sandbox
