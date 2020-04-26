defmodule NounsPhx.Repo do
  use Ecto.Repo,
    otp_app: :nouns_phx,
    adapter: Ecto.Adapters.Postgres
end
