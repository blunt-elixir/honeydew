defmodule Honeydew.Please.Commands.ReactivateTask do
  @moduledoc """
  UGH! Reactivate the task.
  """

  use Blunt.Command
  use Blunt.Command.EventDerivation

  field :task_id, :honeydew_id
  field :notes, :string

  derive_event Honeydew.Please.Events.TaskReactivated do
    @moduledoc """
    OH NO! WHYYYYYY!
    """
    field :status, Honeydew.TaskStatus, default: :active
  end
end
