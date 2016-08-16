use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

config :nerves_system_rpi3, :nerves_env,
  type: :system,
  version: version,
  platform: Nerves.Build.Platforms.BR,
  platform_config: [
    defconfig: "nerves_defconfig"
  ]
