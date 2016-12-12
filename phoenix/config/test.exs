use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :barry, Barry.Endpoint,
  http: [port: 4001],
  server: true

# Print only warnings and errors during test
config :logger, level: :warn

# Configure hound
config :hound, driver: "phantomjs"

# Configure your database
config :barry, Barry.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "barry_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
