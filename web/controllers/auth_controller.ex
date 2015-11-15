defmodule UeberauthExample.AuthController do
  use UeberauthExample.Web, :controller

  def delete(conn, _params) do
    conn
    |> put_flash(:info, "You have been logged out!")
    |> configure_session(drop: true)
    |> redirect(to: "/")
  end

  def callback_phase(%{ assigns: %{ ueberauth_failure: fails } } = conn, _params) do
    conn
    |> put_flash(:error, "Failed to authenticate.")
    |> redirect(to: "/")
  end

  def callback_phase(%{ assigns: %{ ueberauth_auth: auth } } = conn, params) do
    user = %{id: auth["uid"], name: auth["name"], avatar: auth["image"]}
    conn
    |> put_flash(:info, "Successfully authenticated.")
    |> put_session(:current_user, user)
    |> redirect(to: "/")
  end
end
