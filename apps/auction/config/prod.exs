# Since configuration is shared in umbrella projects, this file
# should only configure the :auction_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config


config :auction, ecto_repos: [Auction.Repo]
  
config :auction, Auction.Repo, database: "auction",
  adapter: Ecto.Adapters.Postgres,
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
  ssl: true,
  url: System.get_env("DATABASE_URL")
# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.

