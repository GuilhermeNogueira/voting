# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :voting,
  ecto_repos: [Voting.Repo]

# Configures the endpoint
config :voting, VotingWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "r69d5iFvohEY4L/QWowVL7PZVA59rEvkyML9uFhQMt4ZGXlRuGQy/usEQMwiaiTL",
  render_errors: [view: VotingWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Voting.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "xC4H9pg7"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :voting, VotingWeb.Guardian,
  issuer: "voting",
  secret_key: "lZclI59po7ghqUJEOt7e6KKVAiZVxijOHw0l1pofmzCiViK9AjpWXJy4Gp6HsaHt"

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
