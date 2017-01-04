defmodule Barry.PageController do
  use Barry.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def styleguide(conn, _params) do
    conn
    |> put_layout("styleguide.html")
    |> render("styleguide.html")
  end
end
