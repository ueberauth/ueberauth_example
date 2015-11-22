defmodule UeberauthExample.GuardianSerializer do
  @behaviour Guardian.Serializer
  alias UeberauthExample.User

  def for_token(map), do: {:ok, Map.from_struct(map)}

  def from_token(map) do
    user = %User{
      id: Map.get(map, :id, Map.get(map, "id")),
      name: Map.get(map, :name, Map.get(map, "name")),
      avatar: Map.get(map, :avatar, Map.get(map, "avatar")),
    }
    {:ok, user}
  end
end
