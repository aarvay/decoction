defmodule Mix.Tasks.Decoction.Serve do
  use Mix.Task

  @shortdoc "Locally serves the site "

  @moduledoc """
  Locally serves the site.

  It expects the path of the site as argument.

      mix decoction.new PATH
  """

  def run(_) do
    :application.start :inets
    server_root = '#{Path.expand("../../_site", Mix.Project.build_path)}'
    mime_types = [{'html', 'text/html'},{'htm','text/html'},{'js','text/javascript'},{'css','text/css'},{'gif','image/gif'},{'jpg','image/jpeg'},{'jpeg','image/jpeg'},{'png','image/png'}]

    local_server_config = [
      port: 4000,
      server_name: 'decoction_local_server',
      server_root: server_root,
      document_root: server_root,
      bind_address: {127, 0, 0, 1},
      directory_index: ['index.html'],
      mime_types: mime_types
    ]

    {:ok, pid} = :inets.start(:httpd, local_server_config)
    IO.inspect(pid)
    :timer.sleep :infinity
  end
end
