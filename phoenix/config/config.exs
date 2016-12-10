# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :barry,
  ecto_repos: [Barry.Repo]

# Configures the endpoint
config :barry, Barry.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "S2Uc0I79Bn4+k90cUBy/nWWyAiDX8EHKXmbDFo9TXhQut3rRSb/ScD0i+LbfAXx2",
  render_errors: [view: Barry.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Barry.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
