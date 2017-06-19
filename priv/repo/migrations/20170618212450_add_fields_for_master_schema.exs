defmodule ArtPlatform.Repo.Migrations.AddFieldsForMasterSchema do
  use Ecto.Migration

  def change do
    alter table(:masters) do
      add :city, :string
      add :rank, :integer
    end
  end
end
