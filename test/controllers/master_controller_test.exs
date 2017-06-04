defmodule ArtPlatform.MasterControllerTest do
  use ArtPlatform.ConnCase

  alias ArtPlatform.Master
  @valid_attrs %{about_me: "some content", age: 42, name: "some content", skills: "some content"}
  @invalid_attrs %{}

  test "lists all entries on index", %{conn: conn} do
    conn = get conn, master_path(conn, :index)
    assert html_response(conn, 200) =~ "Listing masters"
  end

  test "renders form for new resources", %{conn: conn} do
    conn = get conn, master_path(conn, :new)
    assert html_response(conn, 200) =~ "New master"
  end

  test "creates resource and redirects when data is valid", %{conn: conn} do
    conn = post conn, master_path(conn, :create), master: @valid_attrs
    assert redirected_to(conn) == master_path(conn, :index)
    assert Repo.get_by(Master, @valid_attrs)
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post conn, master_path(conn, :create), master: @invalid_attrs
    assert html_response(conn, 200) =~ "New master"
  end

  test "shows chosen resource", %{conn: conn} do
    master = Repo.insert! %Master{}
    conn = get conn, master_path(conn, :show, master)
    assert html_response(conn, 200) =~ "Show master"
  end

  test "renders page not found when id is nonexistent", %{conn: conn} do
    assert_error_sent 404, fn ->
      get conn, master_path(conn, :show, -1)
    end
  end

  test "renders form for editing chosen resource", %{conn: conn} do
    master = Repo.insert! %Master{}
    conn = get conn, master_path(conn, :edit, master)
    assert html_response(conn, 200) =~ "Edit master"
  end

  test "updates chosen resource and redirects when data is valid", %{conn: conn} do
    master = Repo.insert! %Master{}
    conn = put conn, master_path(conn, :update, master), master: @valid_attrs
    assert redirected_to(conn) == master_path(conn, :show, master)
    assert Repo.get_by(Master, @valid_attrs)
  end

  test "does not update chosen resource and renders errors when data is invalid", %{conn: conn} do
    master = Repo.insert! %Master{}
    conn = put conn, master_path(conn, :update, master), master: @invalid_attrs
    assert html_response(conn, 200) =~ "Edit master"
  end

  test "deletes chosen resource", %{conn: conn} do
    master = Repo.insert! %Master{}
    conn = delete conn, master_path(conn, :delete, master)
    assert redirected_to(conn) == master_path(conn, :index)
    refute Repo.get(Master, master.id)
  end
end
