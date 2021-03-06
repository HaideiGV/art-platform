defmodule ArtPlatform.MasterController do
  use ArtPlatform.Web, :controller
  alias ArtPlatform.Master

  def index(conn, _params) do
    masters = Repo.all(Master)
    all_masters = from m in Master, distinct: :city, select: m.city
    cities = Repo.all(all_masters)
    render(conn, "index.html", masters: masters, cities: cities)
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

  def update(conn, %{"id" => id, "master" => master_params, "action" => action}) do
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

  def get_masters_by_city(conn, %{"city" => city}) do
    all_masters = from m in Master, distinct: :city, select: m.city
    cities = Repo.all(all_masters)
    masters = Repo.all(from m in Master, where: m.city == ^city)

    render conn, "index.html", masters: masters, cities: cities
  end


  def rank_up(conn, %{"id" => id}) do
    master = Repo.get!(Master, id)
    changeset = Master.changeset(master, %{"rank" => master.rank + 1})

    case Repo.update(changeset) do
      masters = Repo.all(Master)
      {:ok, master} ->
        conn
        |> put_flash(:info, "Rank updated successfully.")
        |> render("index.html", masters: masters, changeset: changeset)
      {:error, changeset} ->
        render(conn, "index.html", masters: masters, changeset: changeset)
    end
  end

  def rank_down(conn, %{"id" => id, "master" => master_params, "action" => action}) do
    master = Repo.get!(Master, id)
    changeset = Master.changeset(master, master_params)

    case Repo.update(changeset) do
      {:ok, master} ->
        conn
        |> put_flash(:info, "Rank updated successfully.")
        |> redirect(to: master_path(conn, :show, master))
      {:error, changeset} ->
        render(conn, "edit.html", master: master, changeset: changeset)
    end
  end

end
