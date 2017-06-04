defmodule ArtPlatform.PageController do
  use ArtPlatform.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
