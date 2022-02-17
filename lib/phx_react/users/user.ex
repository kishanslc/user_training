defmodule PhxReact.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :login, :string
    field :password, :string
    field :email, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:login,:password,:email])
    |> validate_required([:login,:password,:email])

  end
end
