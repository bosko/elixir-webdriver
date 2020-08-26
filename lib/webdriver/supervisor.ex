defmodule WebDriver.Supervisor do
  use Supervisor

  @moduledoc """
    The root supervisor for the WebDriver application supervision tree.
    This is responsible for keeping the BrowserSup's alive.

    Each child of this supervisor runs an instance of a Browser and it's
    associated sessions.

    The functions here should not be called directly by client applications,
    use those provided in the WebDriver module instead.
  """

  def start_link(_state) do
    Supervisor.start_link(__MODULE__, :ok, [])
  end

  def init(:ok) do
    children = [
      {DynamicSupervisor, name: :webdriver, strategy: :one_for_one}
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end

  @doc """
    Start a web browser with the specified configuration.
  """
  def start_browser(config) do
    DynamicSupervisor.start_child(
      :webdriver,
      worker(WebDriver.BrowserSup, [config], id: config.name)
    )
  end

  @doc """
    Stop a web browser identified by the given name.
  """
  def stop_browser(name) do
    DynamicSupervisor.terminate_child(:webdriver, name)
    # DynamicSupervisor.delete_child :webdriver, name
  end
end
