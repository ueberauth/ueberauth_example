use Mix.Config

config :ueberauth_example, UeberauthExample.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [scheme: "https", host: "ueberauth-example.herokuapp.com", port: 443],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  cache_static_manifest: "priv/static/manifest.json",
  secret_key_base: System.get_env("SECRET_KEY_BASE")

# Do not print debug messages in production
config :logger, level: :info

# Configure your database
config :ueberauth_example, UeberauthExample.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  pool_size: 20
