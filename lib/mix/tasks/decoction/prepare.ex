defmodule Mix.Tasks.Decoction.Prepare do
  use Mix.Task

  @shortdoc "Builds the static site"

  @moduledoc """
  Builds the static site

      mix decoction.prepare
  """

  def run([]) do

    {:ok, source_dir} = File.cwd
    destination_dir = Path.join(source_dir, "_site")
    project_files = ["config", "mix.exs", "README.md"]

    # Clean up previous builds
    {:ok, _} = File.rm_rf destination_dir

    # Get the necessary files for builds
    files = File.ls!
            |> Enum.filter(fn(f) -> !Enum.member?(project_files, f) end)
            |> Enum.filter(fn(f) -> Regex.match?(~r/^[^.].*$/, f) end)

    :ok = prepare files

  end

  defp prepare(files) do
    for file <- files do
      format = get_file_type file

      case format do
        :eex ->
      end
    end
  end

  defp get_file_type(file) do
  end
end
