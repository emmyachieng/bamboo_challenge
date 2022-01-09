# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bamboo_challenge,
  ecto_repos: [BambooChallenge.Repo]

# Configures the endpoint
config :bamboo_challenge, BambooChallengeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xJbu0SR6lTiFdKijym7ST6o5FpOEPGFwaMnGwR8Kte5aIAson4qTT1Rl+mULmScR",
  render_errors: [view: BambooChallengeWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: BambooChallenge.PubSub,
  live_view: [signing_salt: "Nn+MlB19"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
