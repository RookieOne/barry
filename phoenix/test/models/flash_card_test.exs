defmodule Barry.FlashCardTest do
  use Barry.ModelCase
  alias Barry.FlashCard

  test "require question" do
    assert {:question, "can't be blank"} in errors_on(%FlashCard{}, %{})
  end
end
