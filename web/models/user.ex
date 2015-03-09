defmodule Leela.User do
  use Leela.Web, :model

  schema "users" do
    field :email, :string
    field :firstname, :string
    field :lastname, :string
    field :timezone, :string
    field :timezone_utc_offset, :integer
    field :job_title, :string

    timestamps
  end

  @doc """
  Creates a changeset based on the `model` and `params`.

  If `params` are nil, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ nil) do
    cast(model, params, ~w(email firstname lastname timezone timezone_utc_offset job_title), ~w())
  end
end
