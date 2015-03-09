defmodule Leela.PageController do
  use Leela.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
