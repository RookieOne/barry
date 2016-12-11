defmodule Barry.FlashCard do
  use Barry.Web, :model

  schema "flash_cards" do
    field :question, :string
    field :answer, :string
  end

  @required_fields ~w(question)
  @optional_fields ~w(answer)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model |> cast(params, @required_fields, @optional_fields)
  end
end
