defmodule SvelteWeb.Repo do
  use Ecto.Repo,
    otp_app: :svelte_web,
    adapter: Ecto.Adapters.Postgres
end
