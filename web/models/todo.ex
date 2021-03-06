defmodule TodoApi.Todo do
  use TodoApi.Web, :model

  schema "todos" do
    field :description, :string
    field :completed, :boolean, default: false

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:description, :completed])
    |> validate_required([:description, :completed])
  end
end
