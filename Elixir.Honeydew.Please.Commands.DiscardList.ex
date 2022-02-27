defmodule Honeydew.Please.Commands.DiscardList do
  def new(values, overrides) do
    Blunt.Message.Constructor.apply(Honeydew.Please.Commands.DiscardList, values, overrides)
  end

  def new(x0) do
    super(x0, [])
  end

  def list_discarded(command, values) do
    Blunt.Command.Events.proxy_dispatch(
      Honeydew.Please.Commands.DiscardList,
      (
        name = Honeydew.Please.Events.ListDiscarded
        opts = []
        Blunt.Command.Events.fq_event_name(Honeydew.Please.Commands.DiscardList, name, opts)
      ),
      command,
      values
    )
  end

  def list_discarded(x0) do
    super(x0, [])
  end

  def handle_validate(changeset) do
    changeset
  end

  def dispatch_async(message, opts) do
    Blunt.Message.Dispatch.dispatch_async(message, opts)
  end

  def dispatch_async(x0) do
    super(x0, [])
  end

  def dispatch(message, opts) do
    Blunt.Message.Dispatch.dispatch(message, opts)
  end

  def dispatch(x0) do
    super(x0, [])
  end

  def changeset(message, values) do
    Blunt.Message.Changeset.changeset(message, values)
  end

  def changeset(x0) do
    super(%Honeydew.Please.Commands.DiscardList{list_id: nil, notes: nil}, x0)
  end

  def after_validate(message) do
    message
  end

  def __struct__(kv) do
    Enum.reduce(
      kv,
      %{__struct__: Honeydew.Please.Commands.DiscardList, list_id: nil, notes: nil},
      fn {key, val}, map -> :maps.update(key, val, map) end
    )
  end

  def __struct__() do
    %{__struct__: Honeydew.Please.Commands.DiscardList, list_id: nil, notes: nil}
  end

  def __schema__(:field_source, :notes) do
    :notes
  end

  def __schema__(:field_source, :list_id) do
    :list_id
  end

  def __schema__(:type, :notes) do
    :string
  end

  def __schema__(:type, :list_id) do
    :string
  end

  def __schema__(:field_source, _) do
    nil
  end

  def __schema__(:type, _) do
    nil
  end

  def __schema__(:association, _) do
    nil
  end

  def __schema__(:embed, _) do
    nil
  end

  def __schema__(:prefix) do
    nil
  end

  def __schema__(:source) do
    nil
  end

  def __schema__(:fields) do
    [:notes, :list_id]
  end

  def __schema__(:query_fields) do
    [:notes, :list_id]
  end

  def __schema__(:primary_key) do
    []
  end

  def __schema__(:hash) do
    77_994_154
  end

  def __schema__(:read_after_writes) do
    []
  end

  def __schema__(:autogenerate_id) do
    nil
  end

  def __schema__(:autogenerate) do
    []
  end

  def __schema__(:autoupdate) do
    []
  end

  def __schema__(:loaded) do
    %{__struct__: Honeydew.Please.Commands.DiscardList, list_id: nil, notes: nil}
  end

  def __schema__(:redact_fields) do
    []
  end

  def __schema__(:query) do
    %Ecto.Query{
      aliases: %{},
      assocs: [],
      combinations: [],
      distinct: nil,
      group_bys: [],
      havings: [],
      joins: [],
      limit: nil,
      lock: nil,
      offset: nil,
      order_bys: [],
      prefix: nil,
      preloads: [],
      select: nil,
      sources: nil,
      updates: [],
      wheres: [],
      windows: [],
      with_ctes: nil,
      from: %Ecto.Query.FromExpr{
        as: nil,
        hints: [],
        source: {nil, Honeydew.Please.Commands.DiscardList},
        prefix: nil
      }
    }
  end

  def __schema__(:dump) do
    %{list_id: {:list_id, :string}, notes: {:notes, :string}}
  end

  def __schema__(:load) do
    [notes: :string, list_id: :string]
  end

  def __schema__(:associations) do
    []
  end

  def __schema__(:embeds) do
    []
  end

  def __events__() do
    [
      {Honeydew.Please.Events.ListDiscarded,
       [
         do:
           {:@, [line: 13],
            [{:moduledoc, [line: 13], ["Event that signals a list was discarded.\n"]}]}
       ],
       {"/Users/chris/code/personal/elixir_cqrs_libs/projects/honeydew/lib/honeydew/please/commands/discard_list.ex",
        12}}
    ]
  end

  def __doc__(:short) do
    "Command to mark list as discarded.\n"
  end

  def __doc__(:field) do
    "\n## Fields\n\n### required\n\n* **list_id** *:string*\n\n\n\n* **notes** *:string*\n\n\n\n\n"
  end

  def __doc__(:option) do
    "\n## Options\n\n\n### optional\n\n* **return** *:enum* - Determines the value to be returned from `dispatch/2`. If the value is `:context` the dispatch context will be returned. If the value is`:response` the value will be returned. \n\n\t * default value: **:response**\n\n\t * possible values: **:context**, **:response**\n\n\n\n"
  end

  def __doc__(:metadata) do
    ""
  end

  def __changeset__() do
    %{list_id: :string, notes: :string}
  end
end