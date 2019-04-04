defmodule WorkoutApp.Guardian.AuthPipeline do
  use Guardian.Plug.Pipeline, otp_app: :WorkoutApp,
  module: WorkoutApp.Guardian,
  error_handler: WorkoutApp.AuthErrorHandler

  plug Guardian.Plug.VerifyHeader, realm: "Bearer"
  plug Guardian.Plug.EnsureAuthenticated
  plug Guardian.Plug.LoadResource

end