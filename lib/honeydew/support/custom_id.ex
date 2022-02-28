defmodule Honeydew.CustomId do
  alias Ecto.Changeset
  alias Blunt.Message.Schema

  @current_version "1"

  @moduledoc """
  Compact, database friendly ids
  """

  def new() do
    @current_version <>
      (:erlang.system_time(:nanosecond)
       |> Base62.encode()) <>
      (:crypto.strong_rand_bytes(8) |> :binary.decode_unsigned() |> Base62.encode())
  end

  # We can expose this as a custom field to blunt messages.

  @behaviour Blunt.Message.Schema.FieldProvider

  @impl true
  @doc """
   This callback is what allows us to register a custom field type.
   You can optionally register a validation to go along with the type.
  """
  def ecto_field(module, {field_name, :honeydew_id, opts}) do
    quote bind_quoted: [module: module, field_name: field_name, opts: opts] do
      Schema.put_field_validation(module, field_name, :honeydew_id)
      Ecto.Schema.field(field_name, :string, opts)
    end
  end

  @impl true
  @doc """
  If you registered a validation for your field, you must handle it

  Any string can be decoded by Base62, so this doesn't really do anything
  except prove the point that it's possible to validate custom field types
  """
  def validate_changeset(:honeydew_id, field_name, changeset, _module) do
    Changeset.validate_change(changeset, field_name, fn ^field_name, value ->
      case Base62.decode(value) do
        {:ok, _} -> []
        _ -> ["is not a valid Honeydew.CustomId"]
      end
    end)
  end

  @impl true
  # `Blunt.Testing.Factories` knows to use field providers for fake data
  def fake(:honeydew_id, _validation, _field_config) do
    new()
  end
end
