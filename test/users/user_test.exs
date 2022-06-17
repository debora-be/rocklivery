defmodule Rocklivery.Users.UserTest do
  use ExUnit.Case

  alias Rocklivery.Users.User

  describe "build/5" do
    test "when all parameters are valid, returns the user" do
      response =
        User.build(
          "Debora",
          "Guariba toda",
          "debora@gmail.com",
          "12345678",
          35
        )

      expected_response =
        {:ok,
         %User{
           address: "Guariba toda",
           age: 35,
           cpf: "12345678",
           email: "debora@gmail.com",
           name: "Debora"
         }}

      assert response == expected_response
    end

    test "when there are invalid params, returns an error" do
      response =
        User.build(
          "Luna",
          "Guariba toda",
          "luna@gmail.com",
          "12345678",
          4
        )

      expected_response = {:error, "Invalid parameters"}

      assert response == expected_response
    end
  end
end
