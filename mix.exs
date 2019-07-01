defmodule IslandsInterface.MixProject do
  use Mix.Project

  def project do
    [
      app: :islands_interface,
      version: "0.1.0",
      elixir: "~> 1.8",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:phoenix, :gettext] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod: {IslandsInterface.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp deps do
    [
      { :phoenix,               "~> 1.4.6"  },
      { :phoenix_pubsub,        "~> 1.1"    },
      { :phoenix_html,          "~> 2.11"   },
      { :gettext,               "~> 0.11"   },
      { :jason,                 "~> 1.0"    },
      { :plug_cowboy,           "~> 2.0"    },
      { :phoenix_live_reload,   "~> 1.2", only: :dev  },
      { :islands_engine,        path: "../islands_engine" }
    ]
  end
end
