defmodule Benchmark do
  def measure(function) do
    function
    |> :timer.tc
    |> elem(0)
    |> Kernel./(1_000_000)
  end
end

defmodule Queue do
  def enqueList(list) do
    Enum.each(0..1000000, fn(list) ->
      list ++ [3]
    end)
  end
  def dequeList(list) do
    Enum.each(0..1000000, fn(list) ->
      list ++ [3]
    end)
  end
end

mylist = []

Benchmark.measure(Queue.enqueList(mylist))
Benchmark.measure(Queue.dequeList(mylist))