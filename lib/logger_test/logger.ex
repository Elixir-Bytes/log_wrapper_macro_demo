defmodule LoggerTest.Logger do
  defmacro __using__(opts) do
    quote do
      require Logger
      require LoggerTest.Logger
      alias LoggerTest.Logger

      defp logger_app_name, do: unquote(opts[:app])

      defp update_meta(meta) do
        app_name = logger_app_name()
        Keyword.put(meta, :app_name, app_name)
      end
    end
  end

  defmacro metadata(meta) do
    quote do
      Logger.metadata(update_meta(unquote(meta)))
    end
  end

  defmacro debug(msg, meta \\ []) do
    quote do
      Logger.debug(unquote(msg), update_meta(unquote(meta)))
    end
  end

  defmacro info(msg, meta \\ []) do
    quote do
      Logger.info(unquote(msg), update_meta(unquote(meta)))
    end
  end

  defmacro warn(msg, meta \\ []) do
    quote do
      Logger.warn(unquote(msg), update_meta(unquote(meta)))
    end
  end

  defmacro error(msg, meta \\ []) do
    quote do
      Logger.error(unquote(msg), update_meta(unquote(meta)))
    end
  end
end
