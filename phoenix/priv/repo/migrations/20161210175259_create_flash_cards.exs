defmodule Barry.Repo.Migrations.CreateFlashCards do
  use Ecto.Migration

  def change do
    create table(:flash_cards) do
      add :question, :string
      add :answer, :string
    end
  end
end
