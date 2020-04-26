defmodule NounsPhxWeb.PageController do
  use NounsPhxWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
