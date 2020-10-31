use Mix.Config

config :auction, Auction.Repo, database: "auction",
  adapter: Ecto.Adapters.Postgres,
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
  username: "test_user",
  password: "workbox-rodeo-forecast-rectify-taxiderm",
  hostname: "localhost",
  port: "5432"
