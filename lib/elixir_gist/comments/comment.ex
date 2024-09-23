defmodule ElixirGist.Comments.Comment do
  use Ecto.Schema
  import Ecto.Changeset

  schema "comments" do
    field :markup_text, :string
    field :user_id, :id
    field :gist_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:markup_text])
    |> validate_required([:markup_text])
  end
end
