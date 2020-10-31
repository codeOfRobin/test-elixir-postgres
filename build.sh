#!/usr/bin/env bash

set -o errexit


mix deps.get --only prod
MIX_ENV=prod mix compile


npm install --prefix ./apps/auction_web/assets
npm run deploy --prefix ./apps/auction_web/assets
mix phx.digest


MIX_ENV=prod mix release --overwrite