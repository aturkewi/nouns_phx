defmodule NounsPhx.Repo.Migrations.CreateGamesTable do
  use Ecto.Migration

  def change do
    create table("games") do
      add :current_round, :integer, default: 0
    end
  end
end
