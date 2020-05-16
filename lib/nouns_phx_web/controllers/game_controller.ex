defmodule NounsPhxWeb.GameController do
  use NounsPhxWeb, :controller

  def create(conn, _params) do
    {:ok, game} = NounsPhx.create_game()
  end
end
