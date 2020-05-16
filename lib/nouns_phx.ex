defmodule NounsPhx do
  @moduledoc """
  NounsPhx keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  alias NounsPhx.{Game, Repo}

  def create_game() do
    Game.new_changeset()
    |> Repo.insert()
  end

  def get_game(id) do
    Repo.get(Game, id)
  end
end
