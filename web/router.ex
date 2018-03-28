defmodule ArtPlatform.Router do
  use ArtPlatform.Web, :router

  pipeline :browser do
    plug :accepts, ["html", "jpg", "json"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ArtPlatform do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/about", PageController, :about
    get "/contacts", PageController, :contacts
    get "/masters/:id/gallery", GalleryController, :get_photo_by_master_id
    get "/masters/city/:city", MasterController, :get_masters_by_city

    resources "/masters", MasterController
    resources "/gallery", GalleryController

  end

  # Other scopes may use custom stacks.
  scope "/api", ArtPlatform do
    pipe_through [:api, :browser, :with_session]

    resources "/users", UserController

    resources "/sessions", SessionController, only: [:new, :create,
                                                   :delete]

  end
end
