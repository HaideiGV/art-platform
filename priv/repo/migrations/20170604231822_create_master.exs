defmodule ArtPlatform.Repo.Migrations.CreateMaster do
  use Ecto.Migration

  def change do
    create table(:masters) do
      add :name, :string
      add :skills, :string
      add :about_me, :string
      add :age, :integer

      timestamps()
    end

  end
end
