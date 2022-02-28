defmodule Honeydew.Please.Commands.MakeListTest do
  use Honeydew.DataCase
  use Blunt.Testing.Factories

  factory Honeydew.Please.Commands.MakeList

  test "name and notes required" do
    assert {:error, %{name: ["can't be blank"], notes: ["can't be blank"]}} =
             build(:make_list, name: nil, notes: nil)
  end

  test "list_id is always generated" do
    assert %{list_id: list_id} = build(:make_list, name: "chris", notes: "hi")

    refute is_nil(list_id)
  end
end
