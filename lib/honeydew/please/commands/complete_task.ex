defmodule Honeydew.Please.Commands.CompleteTask do
  @moduledoc """
  Mark task as completed.
  """

  use Blunt.Command
  use Blunt.Command.EventDerivation

  field :task_id, :honeydew_id
  field :notes, :string

  derive_event Honeydew.Please.Events.TaskCompleted do
    @moduledoc """
    Yay, the task is complete!
    """

    field :status, Honeydew.TaskStatus, default: :completed
  end
end
