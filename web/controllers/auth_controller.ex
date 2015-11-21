defmodule UeberauthExample.AuthController do
  use UeberauthExample.Web, :controller

  alias Ueberauth.Strategy.Helpers
  alias Ueberauth.Auth.Credentials

  def request(conn, _params) do
    render(conn, "request.html", callback_url: Helpers.callback_url(conn))
  end

  def delete(conn, _params) do
    conn
    |> put_flash(:info, "You have been logged out!")
    |> configure_session(drop: true)
    |> redirect(to: "/")
  end

  def callback(%{ assigns: %{ ueberauth_failure: fails } } = conn, _params) do
    conn
    |> put_flash(:error, "Failed to authenticate.")
    |> redirect(to: "/")
  end

  def identity_callback(%{assigns: %{ueberauth_failure: fails}} = conn, params) do
    conn
    |> put_flash(:error, "Failed to authenticate.")
    |> redirect(to: "/")
  end

  def identity_callback(%{assigns: %{ueberauth_auth: auth}} = conn, params) do
    case validate_password(auth.credentials) do
      :ok ->
        user = %{id: auth.uid, name: name_from_auth(auth), avatar: auth.info.image}
        conn
        |> put_flash(:info, "Successfully authenticated.")
        |> put_session(:current_user, user)
        |> redirect(to: "/")
      { :error, reason } ->
        conn
        |> put_flash(:error, reason)
        |> redirect(to: "/")
    end
  end

  def callback(%{ assigns: %{ ueberauth_auth: auth } } = conn, params) do
    user = %{id: auth.uid, name: name_from_auth(auth), avatar: auth.info.image}
    conn
    |> put_flash(:info, "Successfully authenticated.")
    |> put_session(:current_user, user)
    |> redirect(to: "/")
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

  defp validate_password(%Credentials{other: %{password: pw, password_confirmation: pw}}), do: :ok
  defp validate_password(%Credentials{other: %{password: _}}), do: { :error, "Passwords do not match" }
  defp validate_password(_), do: {:error, :"Password Required"}
end
