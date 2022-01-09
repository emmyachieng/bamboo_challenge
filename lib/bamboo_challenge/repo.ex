defmodule BambooChallenge.Repo do
  use Ecto.Repo,
    otp_app: :bamboo_challenge,
    adapter: Ecto.Adapters.Postgres
end
