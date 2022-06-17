defmodule Rocklivery.Factory do
  use ExMachina

  alias Rocklivery.Users.User
  alias Rocklivery.Orders.Item

  def user_factory do
    %User{
      address: "Guariba toda",
      age: 35,
      cpf: "12345678",
      email: "debora@gmail.com",
      name: "Debora"
    }
  end

  def item_factory do
    %Item{
    category: :pizza,
    description: "Pizza de cogumelo",
    quantity: 1,
    unity_price: Decimal.new("66.6")}
  end
end
