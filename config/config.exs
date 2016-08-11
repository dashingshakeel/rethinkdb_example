# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rethinkdb_example,
  ecto_repos: [RethinkdbExample.Repo]

# Configures the endpoint
config :rethinkdb_example, RethinkdbExample.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "IJWfEm1UsIhTbk0W6psyDge8x4OLcVuBbSrNUwd3xNQ+mcHN2Pondxsv6vMEj6NL",
  render_errors: [view: RethinkdbExample.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RethinkdbExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
