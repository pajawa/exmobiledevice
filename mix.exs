defmodule ExMobileDevice.MixProject do
  use Mix.Project

  def project do
    [
      app: :exmobiledevice,
      description: "iDevice control via usbmuxd",
      version: "0.2.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      source_url: "https://github.com/ausimian/exmobiledevice",
      package: package(),
      docs: docs()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :ssl, :tools],
      mod: {ExMobileDevice.Application, []}
    ]
  end

  defp package do
    [
      description: "iDevice control via usbmuxd",
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/ausimian/exmobiledevice"
      }
    ]
  end

  defp docs do
    [
      main: "README",
      source_ref: "v#{Mix.Project.config()[:version]}",
      logo: "assets/exmobiledevice.png",
      extras: [
        "README.md",
        "CHANGELOG.md",
        "LICENSE"
      ]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:gen_state_machine, "~> 3.0.0"},
      {:plist, "~> 0.0.7"},
      {:jason, "~> 1.4"},
      {:uuid, "~> 1.1"},
      {:ex_doc, "~> 0.31", only: :dev, runtime: false},
      {:typed_struct, "~> 0.3.0", runtime: false},
      {:credo, "~> 1.7.3", only: [:dev], runtime: false}
    ]
  end
end
