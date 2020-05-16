defmodule NounsPhx.Word do
  use Ecto.Schema

  import Ecto.Changeset, only: [cast: 3, validate_required: 2]

  alias NounsPhx.Game

  schema("words") do
    field(:name, :string)
    field(:round_1, :integer)
    field(:round_2, :integer)
    field(:round_3, :integer)

    belongs_to(:game, Game)
  end

  def new_word_changeset(game_id) do
    %__MODULE__{}
    |> cast(%{game_id: game_id}, [:game_id])
    |> validate_required([:game_id])
  end

  def create_word(attrs) do
    %__MODULE__{}
    |> cast(attrs, [:game_id, :name])
    |> validate_required([:game_id, :name])
  end
end
