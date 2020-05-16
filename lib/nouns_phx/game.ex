defmodule NounsPhx.Game do
  use Ecto.Schema

  import Ecto.Changeset, only: [cast: 3]

  schema("games") do
    field(:current_round, :integer)
  end

  def new_changeset() do
    __MODULE__
    |> cast(%{current_round: 0}, [:current_round])
  end
end
