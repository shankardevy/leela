defmodule Leela.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :firstname, :string
      add :lastname, :string
      add :timezone, :string
      add :timezone_utc_offset, :integer
      add :job_title, :string

      timestamps
    end
  end
end
