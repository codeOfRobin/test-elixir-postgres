elixir -v
erl -v


mix deps.get --only prod
MIX_ENV=prod mix compile


npm install --prefix ./assets
npm run deploy --prefix ./assets
MIX_ENV=prod mix phx.server