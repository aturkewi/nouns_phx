defmodule NounsPhxTest do
  use NounsPhxWeb.DataCase

  alias NounsPhs.{Game, Repo}

  describe "new_game/0" do
    test "it returns a new game" do
      {:ok, %Game{}} = NounsPhx.new_game()
    end

    test "it stores a new game in the db" do
      NounsPhx.new_game()

      assert 1 == Repo.all(Game) |> Enum.count()
    end
  end
end
