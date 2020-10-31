# Since configuration is shared in umbrella projects, this file
# should only configure the :auction_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :auction_web,
  generators: [context_app: false]

# Configures the endpoint
config :auction_web, AuctionWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kJM3kIHPhJkAvKocrOvdwzIRGyz598S4ZrRyp7YtG42ocdeVKWfIIK/nvWOGog6I",
  render_errors: [view: AuctionWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AuctionWeb.PubSub, adapter: Phoenix.PubSub.PG2]
  
# config :auction_web, AuctionWeb.Endpoint,
#   load_from_system_env: true,
#   url: [scheme: "https", host: "test-elixir-postgres.herokuapp.com", port: 443],
#   force_ssl: [rewrite_on: [:x_forwarded_proto]],
#   cache_static_manifest: "priv/static/cache_manifest.json",
#   secret_key_base: Map.fetch!(System.get_env(), "SECRET_KEY_BASE")

config :auction, ecto_repos: [Auction.Repo]
  
# config :auction, Auction.Repo, database: "auction",
#   adapter: Ecto.Adapters.Postgres,
#   pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
#   ssl: true,
#   url: System.get_env("DATABASE_URL")
# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
