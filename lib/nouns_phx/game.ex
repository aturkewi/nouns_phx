defmodule NounsPhx.Game do
  use Ecto.Schema

  import Ecto.Changeset, only: [cast: 3]

  alias NounsPhx.Word

  schema("games") do
    field(:current_round, :integer)

    has_many(:words, Word)
  end

  def new_changeset() do
    %__MODULE__{}
    |> cast(%{current_round: 0}, [:current_round])
  end
end
