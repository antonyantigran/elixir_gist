defmodule ElixirGist.Gists.SavedGist do
  use Ecto.Schema
  import Ecto.Changeset

  schema "saved_gists" do

    field :user_id, :id
    field :gist_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(saved_gist, attrs) do
    saved_gist
    |> cast(attrs, [])
    |> validate_required([])
  end
end
