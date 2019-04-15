defmodule UeberauthExampleWeb.Router do
  @moduledoc false

  use UeberauthExampleWeb, :router
  require Ueberauth

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/auth", UeberauthExampleWeb do
    pipe_through [:browser]

    get "/:provider", AuthController, :request
    get "/:provider/callback", AuthController, :callback
    post "/:provider/callback", AuthController, :callback
    post "/logout", AuthController, :delete
  end

  scope "/", UeberauthExampleWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end
end
