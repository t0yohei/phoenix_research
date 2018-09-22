defmodule Phoenixapp.PageController do
  use Phoenixapp.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
