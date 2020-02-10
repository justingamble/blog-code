defmodule Mix.Tasks.ExerciseKeyValues do
  use Mix.Task

  # @shortdoc allows 'mix help' to show our application.
  @shortdoc "Run the blog examples from the command line"

  def run(_) do
    KeyValueMerge.run_key_value_examples()
  end
end
