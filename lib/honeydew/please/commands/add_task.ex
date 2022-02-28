defmodule Honeydew.Please.Commands.AddTask do
  @moduledoc """
  Add a task.
  """

  use Blunt.Command
  use Blunt.Command.EventDerivation

  field :list_id, :honeydew_id
  field :name, :string
  field :notes, :string

  internal_field :task_id, :honeydew_id

  @impl true
  def after_validate(command) do
    %{command | task_id: Honeydew.CustomId.new()}
  end

  derive_event Honeydew.Please.Events.TaskAdded do
    @moduledoc """
    Event that indicates a task was added to a list.
    """
    field :status, :task_status, default: :active
  end
end
