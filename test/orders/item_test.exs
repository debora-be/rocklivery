defmodule Rocklivery.Orders.ItemTest do
  use ExUnit.Case

  alias Rocklivery.Orders.Item

  import Rocklivery.Factory

  describe "build/4" do
    test "when all params are valid, returns an item" do
      response = Item.build("Pizza de cogumelo", :pizza, "66.6", 1)

      expected_response = {:ok, build(:item)}

      assert response == expected_response
    end

    test "when there's an invalid category, returns an error" do
      response = Item.build("Pizza de cogumelo", :qualquer, "66.6", 1)

      expected_response = {:error, "Invalid parameters"}

      assert response == expected_response
    end

    test "when there's an invalid price, returns an error" do
      response = Item.build("Pizza de cogumelo", :pizza, "any_price", 1)

      expected_response = {:error, "Invalid price"}

      assert response == expected_response
    end

    test "when there's an invalid quantity, returns an error" do
      response = Item.build("Pizza de cogumelo", :pizza, "66.6", 0)

      expected_response = {:error, "Invalid parameters"}

      assert response == expected_response
    end
  end
end
