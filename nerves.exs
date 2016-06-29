use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

config :nerves_system_rpi3, :nerves_env,
  type: :system,
  version: version,
  build_platform: Nerves.Build.Platforms.BR,
  build_config: [
    defconfig: "nerves_defconfig"
  ]
