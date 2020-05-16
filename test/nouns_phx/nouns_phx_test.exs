defmodule NounsPhxTest do
  use NounsPhx.DataCase

  alias NounsPhx.{Game, Repo}

  describe "new_game/0" do
    test "it returns a new game" do
      assert {:ok, %Game{}} = NounsPhx.create_game()
    end

    test "it stores a new game in the db" do
      NounsPhx.create_game()

      assert 1 == Repo.all(Game) |> Enum.count()
    end
  end
end
