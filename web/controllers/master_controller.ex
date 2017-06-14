defmodule ArtPlatform.MasterController do
  use ArtPlatform.Web, :controller

  alias ArtPlatform.Master

  def index(conn, _params) do
    masters = Repo.all(Master)
    render(conn, "index.html", masters: masters)
  end

  def new(conn, _params) do
    changeset = Master.changeset(%Master{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"master" => master_params}) do
    changeset = Master.changeset(%Master{}, master_params)

    case Repo.insert(changeset) do
      {:ok, _master} ->
        conn
        |> put_flash(:info, "Master created successfully.")
        |> redirect(to: master_path(conn, :index))
      {:error, changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    master = Repo.get!(Master, id)
    render(conn, "show.html", master: master)
  end

  def edit(conn, %{"id" => id}) do
    master = Repo.get!(Master, id)
    changeset = Master.changeset(master)
    render(conn, "edit.html", master: master, changeset: changeset)
  end

  def update(conn, %{"id" => id, "master" => master_params}) do
    master = Repo.get!(Master, id)
    changeset = Master.changeset(master, master_params)

    case Repo.update(changeset) do
      {:ok, master} ->
        conn
        |> put_flash(:info, "Master updated successfully.")
        |> redirect(to: master_path(conn, :show, master))
      {:error, changeset} ->
        render(conn, "edit.html", master: master, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    master = Repo.get!(Master, id)

    # Here we use delete! (with a bang) because we expect
    # it to always work (and if it does not, it will raise).
    Repo.delete!(master)

    conn
    |> put_flash(:info, "Master deleted successfully.")
    |> redirect(to: master_path(conn, :index))
  end
end
