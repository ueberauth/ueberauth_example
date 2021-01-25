defmodule UeberauthExample.Repo do
  use Ecto.Repo,
    otp_app: :ueberauth_example,
    adapter: Ecto.Adapters.Postgres
end
