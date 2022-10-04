defmodule LoggerTest.Control do
  require Logger

  defmodule Foo do
    def bar, do: IO.inspect({:bar}, label: "{:bar}", pretty: true)
  end

  def run do
    Logger.debug("Let's do this")
    Logger.error("But we have an error", error: "Not found")
    Foo.bar()
  end
end
