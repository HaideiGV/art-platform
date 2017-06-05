defmodule ArtPlatform.PageController do
  use ArtPlatform.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def about(conn, _params) do
  	render conn, "about.html"
  end

  def contacts(conn, _params) do
  	render conn, "about.html"
  end

  def gallery(conn, _params) do
  	render conn, "gallery.html"
  end
end
