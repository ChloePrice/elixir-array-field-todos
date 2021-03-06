defmodule Todos.User do
  use Todos.Web, :model

  schema "users" do
    field :name, :string
    field :email, :string
    field :date_of_birth, Ecto.DateTime
    field :todos, {:array, :string}

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :email, :date_of_birth, :todos])
    |> validate_required([:name, :email, :date_of_birth, :todos])
  end
end
