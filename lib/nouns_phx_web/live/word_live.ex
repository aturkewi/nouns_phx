defmodule NounsPhxWeb.WordLive do
  use Phoenix.LiveView
  require Logger

  # first callback invoked
  # used to setup data for first render
  def mount(%{"id" => id}, _session, socket) do
    game = NounsPhx.get_game(id)
    words = game.words |> Enum.count()
    new_word = NounsPhx.new_word(game.id)

    socket =
      socket
      |> assign(:words, words)
      |> assign(:new_word, new_word)

    {:ok, socket}
  end

  # second callback invoked
  # ~L is sigil for live view template
  # for larger templates, a `.html.leex` file is used
  def render(assigns) do
    Phoenix.View.render(NounsPhxWeb.WordView, "new.html", assigns)
  end

  def handle_event("increment", event, socket) do
    # Here is a more verbose way
    # socket = assign(socket, :counter, socket.assigns.counter + 1)

    # Here is a cool function _update/3_
    socket = update(socket, :counter, &(&1 + 1))
    {:noreply, socket}
  end
end
