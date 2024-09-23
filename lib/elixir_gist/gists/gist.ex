defmodule ElixirGist.Gists.Gist do
  use Ecto.Schema
  import Ecto.Changeset

  schema "gists" do
    field :description, :string
    field :markup_text, :string
    field :name, :string
    field :user_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(gist, attrs) do
    gist
    |> cast(attrs, [:name, :description, :markup_text])
    |> validate_required([:name, :description, :markup_text])
  end
end
