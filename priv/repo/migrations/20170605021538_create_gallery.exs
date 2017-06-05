defmodule ArtPlatform.Repo.Migrations.CreateGallery do
  use Ecto.Migration

  def change do
    create table(:gallery) do
      add :image_url, :string
      add :rate, :integer
      add :description, :string
      add :master_id, references(:masters, on_delete: :nothing)

      timestamps()
    end
    create index(:gallery, [:master_id])

  end
end
