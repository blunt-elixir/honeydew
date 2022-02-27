defmodule Honeydew.Please do
  use Blunt.BoundedContext

  @moduledoc """
  The Please Context
  """
  alias Honeydew.Please.Commands
  alias Honeydew.Please.Queries

  blunt_command Commands.MakeList, as: :create_list
  blunt_command Commands.DiscardList
  blunt_command Commands.AddTask
  blunt_command Commands.CompleteTask
  blunt_command Commands.ThwartTask
  blunt_command Commands.RemoveTask
  blunt_command Commands.ReactivateTask

  blunt_query Queries.GetList
  blunt_query Queries.ListLists
  blunt_query Queries.ListLists, as: :list_active_lists, field_values: [status: :active]
  blunt_query Queries.ListTasks
end
