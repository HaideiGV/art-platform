defmodule ArtPlatform.GalleryTest do
  use ArtPlatform.ModelCase

  alias ArtPlatform.Gallery

  @valid_attrs %{description: "some content", image_url: "some content", rate: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Gallery.changeset(%Gallery{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Gallery.changeset(%Gallery{}, @invalid_attrs)
    refute changeset.valid?
  end
end
