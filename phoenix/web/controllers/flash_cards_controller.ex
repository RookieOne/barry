defmodule Barry.FlashCardsController do
  use Barry.Web, :controller
  alias Barry.FlashCard

  def index(conn, _) do
    flash_cards = Repo.all(FlashCard)
    render conn, "index.html", flash_cards: flash_cards
  end

  def new(conn, _) do
    render conn, "new.html", flash_card: %FlashCard{}
  end

  def create(conn, %{"flash_card" => %{"question" => question, "answer" => answer}}) do
    changeset = FlashCard.changeset(%FlashCard{}, %{
      question: question,
      answer: answer
    })

    case Repo.insert(changeset) do
      {:ok, _} -> redirect(conn, to: "/flash_cards")
      {:error, errors} -> render conn, "new.html", flash_card: %FlashCard{}, errors: errors
    end
  end
end
