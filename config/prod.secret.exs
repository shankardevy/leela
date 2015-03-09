use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :leela, Leela.Endpoint,
  secret_key_base: "FgrzAo5a2cV/BEHyaHr3MA/4qsS80IzAfGwgFHNn7J/eEOvZT7s6QZsmQJXWA0vz"

# Configure your database
config :leela, Leela.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "leela_prod"
