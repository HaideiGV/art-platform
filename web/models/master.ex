defmodule ArtPlatform.Master do
  use ArtPlatform.Web, :model

  schema "masters" do
    field :name, :string
    field :skills, :string
    field :about_me, :string
    field :age, :integer
    field :city, :string
    field :rank, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :skills, :about_me, :age, :city, :rank])
    |> validate_required([:name, :skills, :about_me, :age, :city, :rank])
  end
end
