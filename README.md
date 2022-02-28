# Blunt Honeydew 

A huge thanks to [quarterpi](quarterpi/honeydew) for allowing me to use his project to flesh out my ideas!

Commands and Events are defined in [Please.Commands](lib/honeydew/please/commands).

Aggregate Root state can be seen in action in the [Please.Aggregates](lib/honeydew/please/aggregates)

The Bounded Context is in [Please](lib/honeydew/please.ex)

Blunt customizations are in [here](lib/honeydew/support/blunt) and the [config file](config/config.exs)

See the [HoneydewIdProvider](lib/honeydew/support/blunt/honeydew_id_provider.ex) to see how you can define custom field types and validations

See an [Aggregate Root Test](test/honeydew/please/aggregates/list_test.exs)

See some [Command Tests](test/honeydew/please/commands/make_list_test.exs)

## Notes

Some names are a bit funky right now. 
    
`blunt_command` and `blunt_query` in the please context.

`bispatch` in tests.

This is because I'm busy porting a large app from `cqrs_tools` to `blunt` and have some naming conflicts between the two libs.

The names will be `command`, `query`, and `dispatch` on a v1



# Original Honeydew README

An example app built on the CELP (Commanded, Elixir, LiveView, PostgreSQL) stack.

Use this example "Honey Do" list app to experiment with CQRS/ES in Commanded. The domain is pretty simple.
It's a todo list with a little extra suace allowing developers lots of creative freedom.

You'll need to have PostgreSQL setup and running on your machine. My favourite way to get PostgreSQL setup is via Docker Desktop. Once you have docker installed, you can use this command to get PostgreSQL setup on your machine.

`docker run --rm --name pg-docker -e POSTGRES_PASSWORD=postgres -d -p 5432:5432 postgres`

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Create and setup the Event Store with `mix event_store.init`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Blunt
For an example of this app ported to use `blunt` checkout the `with_blunt` branch!

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
  * Commanded: https://hexdocs.pm/commanded/1.2.0/Commanded.html


This is a SUPER rough example meant to get you started without much hassle. It's not meant to be a complete guide. 

If you have any questions, feel free to reach out to me: 
  on the Elixir Slack @threequarterspi.
  on twitter @threequarterspi
  on github @quarterpi

