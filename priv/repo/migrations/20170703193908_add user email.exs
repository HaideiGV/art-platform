defmodule :"Elixir.ArtPlatform.Repo.Migrations.Add user email" do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :email, :string
    end
  end
end
