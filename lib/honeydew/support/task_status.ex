defmodule Honeydew.TaskStatus do
  @field_type :task_status
  @values [:active, :discarded, :completed, :thrwarted, :removed]

  def values, do: @values

  @behaviour Blunt.Message.Schema.FieldProvider

  @impl true
  @doc """
   This callback is what allows us to register a custom field type.
   You can optionally register a validation to go along with the type.
  """
  def ecto_field(module, {field_name, @field_type, opts}) do
    opts = Keyword.put(opts, :values, @values)

    quote bind_quoted: [module: module, field_name: field_name, opts: opts] do
      Ecto.Schema.field(field_name, Ecto.Enum, opts)
    end
  end

  @impl true
  def validate_changeset(_validation, _field_name, changeset, _module) do
    changeset
  end

  @impl true
  # `Blunt.Testing.Factories` knows to use field providers for fake data
  def fake(@field_type, _validation, _field_config) do
    Enum.random(@values)
  end
end
