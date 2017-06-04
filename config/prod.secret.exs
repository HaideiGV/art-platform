use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :art_platform, ArtPlatform.Endpoint,
  secret_key_base: "Hlb15l3JUDO8b7Br6qO9bKbzJRhUosREQX403bSVpTQ/Pa2ekqbYmS4Jp4T8w9Ba"

# Configure your database
config :art_platform, ArtPlatform.Repo,
  adapter: Ecto.Adapters.Postgres,
  # host: "ec2-54-243-252-91.compute-1.amazonaws.com",
  username: "ozvumevkmafqjz",
  password: "74615c7bac29ea5c5f2866b29ce430f5cc3f4b0b607219d19fe5527886b67f77",
  database: "d1nv4gp1064227",
  pool_size: 20,
  port: 5432
