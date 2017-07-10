defmodule ArtPlatform.UserView do
  use ArtPlatform.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, ArtPlatform.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, ArtPlatform.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      username: user.username,
      password: user.password,
      session: user.session}
  end
end
