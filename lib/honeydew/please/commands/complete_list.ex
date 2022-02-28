defmodule Honeydew.Please.Commands.CompleteList do
  @moduledoc """
  Command to mark list as completed.
  """

  use Blunt.Command
  use Blunt.Command.EventDerivation

  field :list_id, :honeydew_id
  field :notes, :string

  derive_event Honeydew.Please.Events.ListCompleted do
    @moduledoc """
    Event that signals a list was completed.
    """
    field :status, :list_status, default: :completed
  end
end
