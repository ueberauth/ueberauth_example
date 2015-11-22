defmodule UserFromAuth do
  alias Ueberauth.Auth
  alias Ueberauth.Auth.Credentials
  alias UeberauthExample.User

  def find_or_create(%Auth{provider: :identity} = auth) do
    case validate_password(auth.credentials) do
      :ok ->
        {:ok, %User{id: auth.uid, name: name_from_auth(auth), avatar: auth.info.image}}
      { :error, reason } -> {:error, reason}
    end
  end

  def find_or_create(%Auth{} = auth) do
    {:ok, %User{id: auth.uid, name: name_from_auth(auth), avatar: auth.info.image}}
  end

  defp name_from_auth(auth) do
    if auth.info.name do
      auth.info.name
    else
      name = [auth.info.first_name, auth.info.last_name]
      |> Enum.filter(&(&1 != nil and &1 != ""))
      if length(name) == 0, do: auth.info.nickname, else: name = Enum.join(name, " ")
    end
  end

  defp validate_password(%Credentials{other: %{password: ""}}), do: {:error, "Password required"}
  defp validate_password(%Credentials{other: %{password: pw, password_confirmation: pw}}), do: :ok
  defp validate_password(%Credentials{other: %{password: _}}), do: { :error, "Passwords do not match" }
  defp validate_password(_), do: {:error, "Password Required"}
end
