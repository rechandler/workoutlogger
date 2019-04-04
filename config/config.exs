# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :workout_app,
  ecto_repos: [WorkoutApp.Repo]

# Configures the endpoint
config :workout_app, WorkoutAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4MUSj3ZbnaTt3XndAmVUFwo3gkt9qpbL5EzjbFaF0qBE249dAqYCr16hz3SSL30S",
  render_errors: [view: WorkoutAppWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: WorkoutApp.PubSub, adapter: Phoenix.PubSub.PG2]

# Guardian Config
config :workout_app, WorkoutApp.Guardian,
  issuer: "WorkoutApp",
  secret_key: "XmmL13jFaj0IPGzCxRLM6Y/amv+YjJNhSpI9uGjRCfBBeDfQOZ1TxlCE0tDG9Vts"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
