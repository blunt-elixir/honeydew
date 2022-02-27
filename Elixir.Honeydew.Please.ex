defmodule Honeydew.Please do
  def thwart_task(values, opts) do
    Blunt.BoundedContext.Proxy.dispatch(Honeydew.Please.Commands.ThwartTask, values, [], opts)
  end

  def thwart_task(x0) do
    super(x0, [])
  end

  def remove_task(values, opts) do
    Blunt.BoundedContext.Proxy.dispatch(Honeydew.Please.Commands.RemoveTask, values, [], opts)
  end

  def remove_task(x0) do
    super(x0, [])
  end

  def reactivate_task(values, opts) do
    Blunt.BoundedContext.Proxy.dispatch(Honeydew.Please.Commands.ReactivateTask, values, [], opts)
  end

  def reactivate_task(x0) do
    super(x0, [])
  end

  def list_tasks_query(values, opts) do
    Blunt.BoundedContext.Proxy.dispatch(Honeydew.Please.Queries.ListTasks, values, [], opts,
      return: :query
    )
  end

  def list_tasks_query(x0) do
    super(x0, [])
  end

  def list_tasks(values, opts) do
    Blunt.BoundedContext.Proxy.dispatch(Honeydew.Please.Queries.ListTasks, values, [], opts)
  end

  def list_tasks(x0) do
    super(x0, [])
  end

  def list_tasks() do
    super([], [])
  end

  def list_lists_query(values, opts) do
    Blunt.BoundedContext.Proxy.dispatch(Honeydew.Please.Queries.ListLists, values, [], opts,
      return: :query
    )
  end

  def list_lists_query(x0) do
    super(x0, [])
  end

  def list_lists(values, opts) do
    Blunt.BoundedContext.Proxy.dispatch(Honeydew.Please.Queries.ListLists, values, [], opts)
  end

  def list_lists(x0) do
    super(x0, [])
  end

  def list_lists() do
    super([], [])
  end

  def list_active_lists_query(values, opts) do
    Blunt.BoundedContext.Proxy.dispatch(
      Honeydew.Please.Queries.ListLists,
      values,
      [field_values: [status: :active]],
      opts,
      return: :query
    )
  end

  def list_active_lists_query(x0) do
    super(x0, [])
  end

  def list_active_lists(values, opts) do
    Blunt.BoundedContext.Proxy.dispatch(
      Honeydew.Please.Queries.ListLists,
      values,
      [field_values: [status: :active]],
      opts
    )
  end

  def list_active_lists(x0) do
    super(x0, [])
  end

  def list_active_lists() do
    super([], [])
  end

  def get_list_query(values, opts) do
    Blunt.BoundedContext.Proxy.dispatch(Honeydew.Please.Queries.GetList, values, [], opts,
      return: :query
    )
  end

  def get_list_query(x0) do
    super(x0, [])
  end

  def get_list(values, opts) do
    Blunt.BoundedContext.Proxy.dispatch(Honeydew.Please.Queries.GetList, values, [], opts)
  end

  def get_list(x0) do
    super(x0, [])
  end

  def get_list() do
    super([], [])
  end

  def discard_list(values, opts) do
    Blunt.BoundedContext.Proxy.dispatch(Honeydew.Please.Commands.DiscardList, values, [], opts)
  end

  def discard_list(x0) do
    super(x0, [])
  end

  def create_list(values, opts) do
    Blunt.BoundedContext.Proxy.dispatch(Honeydew.Please.Commands.MakeList, values, [], opts)
  end

  def create_list(x0) do
    super(x0, [])
  end

  def complete_task(values, opts) do
    Blunt.BoundedContext.Proxy.dispatch(Honeydew.Please.Commands.CompleteTask, values, [], opts)
  end

  def complete_task(x0) do
    super(x0, [])
  end

  def add_task(values, opts) do
    Blunt.BoundedContext.Proxy.dispatch(Honeydew.Please.Commands.AddTask, values, [], opts)
  end

  def add_task(x0) do
    super(x0, [])
  end
end