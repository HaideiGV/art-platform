defmodule ArtPlatform.Master do
  use ArtPlatform.Web, :model

  schema "masters" do
    field :name, :string
    field :skills, :string
    field :about_me, :string
    field :age, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :skills, :about_me, :age])
    |> validate_required([:name, :skills, :about_me, :age])
  end
end
