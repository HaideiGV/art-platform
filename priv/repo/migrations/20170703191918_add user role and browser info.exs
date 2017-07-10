defmodule :"Elixir.ArtPlatform.Repo.Migrations.Add user role and browser info" do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :role, :string
      add :browser_info, :string
    end
  end
end
