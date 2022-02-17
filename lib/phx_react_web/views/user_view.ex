defmodule PhxReactWeb.UserView do
  use PhxReactWeb, :view
  alias PhxReactWeb.UserView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{
      id: user.id,
      login: user.login,
      email: user.email
    }
  end
end
