use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

config :nerves_system_rpi3, :nerves_env,
  type: :system,
  version: version,
  mirrors: ["https://github.com/rob-brown/nerves_system_rpi3/releases/download/v#{version}/nerves_system_rpi3-v#{version}.tar.gz"],
  build_platform: Nerves.System.Platforms.BR,
  build_config: [
    defconfig: "nerves_defconfig",
    package_files: [
      "rootfs-additions",
      "linux-4.4.defconfig",
      "fwup.conf",
      "cmdline.txt",
      "config.txt",
      "post-createfs.sh"
    ]
  ]
