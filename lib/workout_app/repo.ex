defmodule WorkoutApp.Repo do
  use Ecto.Repo,
    otp_app: :workout_app,
    adapter: Ecto.Adapters.Postgres
end
