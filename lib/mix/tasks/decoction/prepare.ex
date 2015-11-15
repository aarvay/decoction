defmodule Mix.Tasks.Decoction.Prepare do
  use Mix.Task

  @shortdoc "Builds "

  @moduledoc """
  Creates a new Decoction site.

  It expects the path of the site as argument.

      mix decoction.new PATH
  """

  @spec run(OptionParser.argv) :: :ok
  def run(argv) do
    {_, argv, _} = OptionParser.parse(argv)

    case argv do
      [] ->
        Mix.shell.error "Expected PATH to be given, please use \"mix decoction.new PATH\""
      [path|_] ->
        Mix.shell.info(Path.expand(path))
    end
  end
end
