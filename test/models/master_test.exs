defmodule ArtPlatform.MasterTest do
  use ArtPlatform.ModelCase

  alias ArtPlatform.Master

  @valid_attrs %{about_me: "some content", age: 42, name: "some content", skills: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Master.changeset(%Master{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Master.changeset(%Master{}, @invalid_attrs)
    refute changeset.valid?
  end
end
