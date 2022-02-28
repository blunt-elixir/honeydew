defmodule Honeydew.Please.Commands.ThwartTask do
  @moduledoc """
  Command that indicates a task is not possible to complete.
  """

  use Blunt.Command
  use Blunt.Command.EventDerivation

  field :task_id, :honeydew_id
  field :notes, :string

  derive_event Honeydew.Please.Events.TaskThwarted do
    @moduledoc """
    A Task was thwarted, meaning that it was not possible to complete.
    """
    field :status, :task_status, default: :thrwarted
  end
end
