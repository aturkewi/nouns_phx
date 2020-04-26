defmodule NounsPhxWeb.CounterLive do
  use Phoenix.LiveView
  require Logger

  # first callback invoked
  # used to setup data for first render
  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(:counter, 0)
      |> IO.inspect(label: "SOCKET in mount")

    {:ok, socket}
  end

  # second callback invoked
  # ~L is sigil for live view template
  # for larger templates, a `.html.leex` file is used
  def render(assigns) do
    Logger.info("RENDER #{inspect(self())}")
    ~L"""
    <label>Counter: <%= @counter %></label>
    <button phx-click="increment">+</button>
    """
  end

  def handle_event("increment", event, socket) do
    # Here is a more verbose way
    # socket = assign(socket, :counter, socket.assigns.counter + 1)

    # Here is a cool function _update/3_
    socket = update(socket, :counter, &(&1 + 1))
    {:noreply, socket}
  end
end
