defmodule Honeydew.Please.Queries.GetListPipeline do
  def handle_dispatch(query, _context, opts) do
    Honeydew.Repo.one(query, opts)
  end

  def create_query(filters, context) do
    preload = Blunt.Query.preload(context)

    query = %{
      __struct__: Ecto.Query,
      aliases: %{list: 0},
      assocs: [],
      combinations: [],
      distinct: nil,
      from: %Ecto.Query.FromExpr{
        source:
          {Honeydew.Please.Projections.List.__schema__(:source), Honeydew.Please.Projections.List},
        as: :list,
        prefix: Honeydew.Please.Projections.List.__schema__(:prefix),
        hints: []
      },
      group_bys: [],
      havings: [],
      joins: [],
      limit: nil,
      lock: nil,
      offset: nil,
      order_bys: [],
      prefix: nil,
      preloads: [preload],
      select: nil,
      sources: nil,
      updates: [],
      wheres: [],
      windows: [],
      with_ctes: nil
    }

    Enum.reduce(filters, query, fn {:list_id, list_id}, query ->
      query =
        Ecto.Query.Builder.From.apply(query = Ecto.Queryable.to_query(query), 1, nil, nil, [])

      (
        query = query

        Ecto.Query.Builder.Filter.apply(query, :where, %Ecto.Query.BooleanExpr{
          expr:
            {:==, [],
             [
               {{:., [], [{:&, [], [Ecto.Query.Builder.count_alias!(query, :list)]}, :list_id]},
                [], []},
               {:^, [], [0]}
             ]},
          op: :and,
          params: [
            {Ecto.Query.Builder.not_nil!(list_id),
             {Ecto.Query.Builder.count_alias!(query, :list), :list_id}}
          ],
          subqueries: [],
          file:
            "/Users/chris/code/personal/elixir_cqrs_libs/projects/honeydew/lib/honeydew/please/queries/get_list_pipeline.ex",
          line: 14
        })
      )
    end)
  end
end