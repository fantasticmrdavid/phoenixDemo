# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenixDemo,
  ecto_repos: [PhoenixDemo.Repo]

# Configures the endpoint
config :phoenixDemo, PhoenixDemo.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kFPJOnPLlyRYYkRnCMxNF7BzBNjxgqoO88Ru2kjOaYqTRuF8E1BkWG1z6Y/MIbAz",
  render_errors: [view: PhoenixDemo.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixDemo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
