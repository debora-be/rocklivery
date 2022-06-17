defmodule Rocklivery.Factory do
  use ExMachina

  alias Rocklivery.Users.User

  def user_factory do
    %User{
      address: "Guariba toda",
      age: 35,
      cpf: "12345678",
      email: "debora@gmail.com",
      name: "Debora"
    }
  end
end
