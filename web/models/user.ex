defmodule ArtPlatform.User do
  use ArtPlatform.Web, :model

  schema "users" do
    field :username, :string
    field :password, :string
    field :session, :string
    field :role, :string
    field :email, :string
    field :password_hash, :string
    field :browser_info, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """

  @required_fields ~w(email role)a
  @optional_fields ~w(username role)a

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, @required_fields ++ @optional_fields)
    |> validate_required(@required_fields)
    |> validate_inclusion(:role, ["admin", "user", "master"])
    |> unique_constraint(:email)
  end

  def registration_changeset(struct, params) do
    struct
    |> changeset(params)
    |> cast(params, ~w(password)a, [])
    |> validate_length(:password, min: 6, max: 100)
    |> hash_password
  end

  defp hash_password(changeset) do
    case changeset do
      %Ecto.Changeset{valid?: true, changes: %{password: password}} ->
        put_change(
          changeset, :password_hash, Comeonin.Bcrypt.hashpwsalt(password)
        )
      _ ->
        changeset
    end
  end
end
