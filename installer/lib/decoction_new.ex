defmodule Mix.Tasks.Decoction.New do
  use Mix.Task
  import Mix.Generator

  @version Mix.Project.config[:version]
  @shortdoc "Creates a new Decoction v#{@version} project"

  @mapping [
    {:eex, "README.md"},
    {:eex, "mix.exs"},
    {:eex, "lib/app_name.ex"},
    {:eex, "config/config.exs"},
    {:text, "_site/css/normalize.css"},
    {:text, "_site/css/skeleton.css"},
    {:text, "_site/index.html"}
  ]

  @moduledoc """
  Creates a new Decoction project.

  It expects the path of the project as argument.

      mix decoction.new PATH

  A project at the given PATH will be created. The project name will be
  retrieved from the path.
  """

  # Embed all defined templates
  root = Path.expand("../template", __DIR__)

  for {type, source} <- @mapping do
    unless type == :keep do
      @external_resource Path.join(root, source)
      def render(unquote(source)), do: unquote(File.read!(Path.join(root, source)))
    end
  end

  def run([]) do
    Mix.Task.run "help", ["decoction.new"]
  end

  def run([version|_]) when version in ~w(-v --version) do
    Mix.shell.info "Decoction v#{@version}"
  end

  def run([path|_]) do
    app_name = Path.expand(path) |> Path.basename
    module_name = app_name |> Mix.Utils.camelize
    bindings = [
      app_name: app_name,
      module_name: module_name
    ]
    generate_project(path, bindings)
  end

  defp generate_project(target_dir, bindings) do
    app_name = Keyword.fetch!(bindings, :app_name)
    for {format, source} <- @mapping do
      target = Path.join(target_dir,
                         String.replace(source, "app_name", app_name))

      case format do
        :keep ->
          File.mkdir_p!(target)
        :text ->
          create_file(target, render(source))
        :eex  ->
          contents = EEx.eval_string(render(source), bindings, file: source)
          create_file(target, contents)
      end
    end
  end
end
