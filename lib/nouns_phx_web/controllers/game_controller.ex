defmodule NounsPhxWeb.GameController do
  use NounsPhxWeb, :controller

  def create(conn, _params) do
    {:ok, game} = NounsPhx.create_game()

    conn
    |> put_flash(:info, "Game created!")
    |> redirect(to: Routes.game_path(conn, :show, game.id))
  end

  def show(conn, %{"id" => id}) do
    game = NounsPhx.get_game(id)
    case game.round do
      0 -> # render adding words
      4 -> # render game over
      _ -> # render game play
    end

    render(conn, "show.html", params: params)
  end
end
