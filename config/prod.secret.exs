use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :ueberauth_example, UeberauthExample.Endpoint,
  secret_key_base: "5fpwj7IoUC9pNhTmPmXfIqEQloGVDYWsKH+mT+MuMeA80V8TsjRduvoX36iUfvHt"

# Configure your database
config :ueberauth_example, UeberauthExample.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "ueberauth_example_prod",
  pool_size: 20
