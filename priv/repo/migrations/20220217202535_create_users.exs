defmodule PhxReact.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :login, :string
      add :email, :string
      add :password, :string, null: false

      timestamps()
    end
  end
end
