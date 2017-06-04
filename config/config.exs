# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :art_platform,
  ecto_repos: [ArtPlatform.Repo]

# Configures the endpoint
config :art_platform, ArtPlatform.Endpoint,
  url: [host: "art-platform.herokuapp.com"],
  secret_key_base: "Hlb15l3JUDO8b7Br6qO9bKbzJRhUosREQX403bSVpTQ/Pa2ekqbYmS4Jp4T8w9Ba",
  render_errors: [view: ArtPlatform.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ArtPlatform.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
