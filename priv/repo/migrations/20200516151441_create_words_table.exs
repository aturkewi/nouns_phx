defmodule NounsPhx.Repo.Migrations.CreateWordsTable do
  use Ecto.Migration

  def change do
    create table("words") do
      add :name, :string, null: false
      add :game_id, :integer, null: false
      add :round_1, :integer
      add :round_2, :integer
      add :round_3, :integer
    end
  end
end
