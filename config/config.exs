# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenixapp,
  ecto_repos: [Phoenixapp.Repo]

# Configures the endpoint
config :phoenixapp, Phoenixapp.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9rxn3mO0FRrjZHL27iJhy3k4r/aREGQ+epLYrppcHXb/KQNN7lPPL6EK/Pe+nIYx",
  render_errors: [view: Phoenixapp.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phoenixapp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
