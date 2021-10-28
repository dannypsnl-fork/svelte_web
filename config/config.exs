# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :svelte_web,
  ecto_repos: [SvelteWeb.Repo]

# Configures the endpoint
config :svelte_web, SvelteWebWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Scm5ae71Jz/xJyosOK5V09APNDeHefEciqHpJzHSea/g+bRfdp4eJD8sRFJR/6FX",
  render_errors: [view: SvelteWebWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: SvelteWeb.PubSub,
  live_view: [signing_salt: "c1qR3Kxi"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
