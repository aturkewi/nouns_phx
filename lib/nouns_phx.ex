defmodule NounsPhx do
  @moduledoc """
  NounsPhx keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  alias NounsPhx.{Game, Repo, Word}

  def create_game() do
    Game.new_changeset()
    |> Repo.insert()
  end

  def get_game(id) do
    Game
    |> Repo.get(id)
    |> Repo.preload(:words)
  end

  def new_word(game_id) do
    Word.new_word_changeset(game_id)
  end

  def create_word(attrs) do
    attrs
    |> Word.create_word()
    |> Repo.insert
  end
end
