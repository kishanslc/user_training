defmodule PhxReact.UsersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhxReact.Users` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        login: "some login"
      })
      |> PhxReact.Users.create_user()

    user
  end
end
