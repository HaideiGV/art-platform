defmodule ArtPlatform.PageController do
  use ArtPlatform.Web, :controller

  alias ArtPlatform.Gallery

  def index(conn, _params) do
    images = from(i in Gallery, order_by: [desc: i.rate], limit: 5)
    top_images = Repo.all(images)
    render conn, "index.html", top_images: top_images
  end

  def about(conn, _params) do
  	render conn, "about.html"
  end

  def contacts(conn, _params) do
  	render conn, "contacts.html"
  end

end
