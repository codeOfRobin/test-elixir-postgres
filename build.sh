elixir -v
erl -v

npm install --prefix ./apps/auction_web/assets
mix deps.get --only prod
MIX_ENV=prod mix compile

MIX_ENV=prod mix phx.server