defmodule Mix.Tasks.Decoction.NewTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  @site_name "personal_site"

  test "new with no arguments" do
    output =
      capture_io fn ->
        Mix.Tasks.Decoction.New.run []
      end

    assert output =~ "mix decoction.new"
    assert output =~ "Creates a new Decoction project"
  end

  test "returns the version" do
    Mix.Tasks.Decoction.New.run(["-v"])
    assert_received {:mix_shell, :info, ["Decoction v" <> _]}
  end

  # test "new with defaults" do
  #   Mix.Tasks.Decoction.new.run([@site_name])
  #   # assert_received {:mix_shell, :info, ["#{Path.expand(@site_name)}"]}
  # end
end
