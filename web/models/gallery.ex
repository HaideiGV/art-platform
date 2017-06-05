defmodule ArtPlatform.Gallery do
  use ArtPlatform.Web, :model

  schema "gallery" do
    field :image_url, :string
    field :rate, :integer
    field :description, :string
    belongs_to :master, ArtPlatform.Master

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:image_url, :rate, :description])
    |> validate_required([:image_url, :rate, :description])
  end
end
