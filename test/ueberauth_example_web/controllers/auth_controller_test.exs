defmodule UeberauthExampleWeb.AuthControllerTest do
  alias Ecto.UUID
  use UeberauthExampleWeb.ConnCase

  alias Ueberauth.Strategy

  test "GET /", %{conn: conn} do
    user = %Strategy.Test.UserData{
      uid: UUID.generate()
    }
    conn = Strategy.Test.put_testing_user(conn, user)
    conn = get(conn, "/auth/testing/callback")
    assert conn.status == 302
    assert get_flash(conn) == %{"info" => "Successfully authenticated."}
  end
end
