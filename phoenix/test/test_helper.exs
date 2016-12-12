Application.ensure_all_started(:hound)
ExUnit.start(exclude: :feature)

:ok = Ecto.Adapters.SQL.Sandbox.checkout(Barry.Repo)
Ecto.Adapters.SQL.Sandbox.mode(Barry.Repo, { :shared, self() })
