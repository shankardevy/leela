defmodule Leela.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Leela do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
		resources "/users", UserController
  end

  # Other scopes may use custom stacks.
  # scope "/api", Leela do
  #   pipe_through :api
  # end
end
