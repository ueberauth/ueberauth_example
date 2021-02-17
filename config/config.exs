# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

# Configures the endpoint
config :ueberauth_example, UeberauthExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "cmFHOAeb4fOkx/XBcXe0pnKNfgcuicWd0eVrvIb8vZlEQRb1nnvaWcs7dTABVcdN",
  render_errors: [view: UeberauthExampleWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: UeberauthExample.PubSub

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :ueberauth, Ueberauth,
  providers: [
    facebook: {Ueberauth.Strategy.Facebook, []},
    github: {Ueberauth.Strategy.Github, [default_scope: "user:email"]},
    google: {Ueberauth.Strategy.Google, []},
    identity:
      {Ueberauth.Strategy.Identity,
       [
         callback_methods: ["POST"],
         uid_field: :username,
         nickname_field: :username
       ]},
    slack: {Ueberauth.Strategy.Slack, []},
    twitter: {Ueberauth.Strategy.Twitter, []}
  ]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
