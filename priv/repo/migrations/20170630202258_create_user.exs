defmodule ArtPlatform.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :username, :string
      add :password, :string
      add :session, :string

      timestamps()
    end

  end
end
