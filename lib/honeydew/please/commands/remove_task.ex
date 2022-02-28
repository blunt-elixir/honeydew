defmodule Honeydew.Please.Commands.RemoveTask do
  @moduledoc """
  Mercifully, attempt to remove a task.
  """

  use Blunt.Command
  use Blunt.Command.EventDerivation

  field :task_id, :honeydew_id
  field :notes, :string

  derive_event Honeydew.Please.Events.TaskRemoved do
    @moduledoc """
    Thankfully, the task was removed.
    """

    field :status, Honeydew.TaskStatus, default: :removed
  end
end
