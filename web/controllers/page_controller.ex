defmodule RethinkdbExample.PageController do
  use RethinkdbExample.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
