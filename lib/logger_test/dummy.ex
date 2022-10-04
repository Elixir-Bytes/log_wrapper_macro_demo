defmodule LoggerTest.Dummy do
  use LoggerTest.Logger, app: :logger_test_test

  def run do
    Logger.debug("Let's do this")
    Logger.error("But we have an error", error: "Not found")
  end
end
