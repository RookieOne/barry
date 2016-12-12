defmodule Barry.Features.CreateFlashCard.OkTest do
  use ExUnit.Case
  use Hound.Helpers
  alias Barry.FlashCard
  alias Barry.Repo

  hound_session

  @tag :feature
  test "A visitor should be able to create a flash card" do
    navigate_to("/flash_cards/new")

    fill_field({:id, "flash_card_question"}, "Who is the Flash?")
    submit_element({:name, "flash_card"})

    assert (Repo.all(FlashCard) |> length) == 1
  end

end
