defmodule UeberauthExample.PageController do
  use UeberauthExample.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
