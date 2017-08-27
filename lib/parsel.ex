defmodule Parsel do
  NimbleCSV.define(MyParser, separator: ",", escape: "\"")

  def deliver(logfile, size) do
    logfile
    |> File.stream!(read_ahead: 10_000)
    |> MyParser.parse_stream
    |> Flow.from_enumerable()
    |> Flow.flat_map(fn [_, reason, _, _] -> %{reason: reason} end)
    |> Flow.partition()
    |> Flow.reduce(fn -> %{} end, fn reason, acc -> Map.update(acc, reason, 1, & &1 + 1) end)
    |> Flow.take_sort(size, fn {_reason_a, count_a}, {_reason_b, count_b} -> count_b <= count_a end)
    |> Enum.to_list
  end

end
