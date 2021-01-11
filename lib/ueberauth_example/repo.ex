defmodule UeberauthExample.Repo do
  @moduledoc false
  use Ecto.Repo,
    otp_app: :ueberauth_example,
    adapter: Ecto.Adapters.Postgres
end
