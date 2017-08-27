# Parsel

A CSV parser taking a 4 column log file detailing email deliverability errors and reporting on the top 10 failures using Elixir's Stream and Flow features. This is a fast to execute solution using modern functions which, because of BEAM, Stream and Flow, could cope with parsing very large log files with ease (ed: not actually tested yet!).

**Development Stack (as of 27 Aug 2017):**

* Dev Machine: OS X
* Erlang: v20
* Elixir: v1.5.1
* Nimble CSV: v0.2.0
* Flow: v0.12.0

## Running Locally

* (OS X) install Erlang, Elixir & Hex: (1) $ brew update ; (2) $ brew install elixir
* clone this repo to your local machine
* cd to root folder (cio-parsel)
* run: $ mix deps.get
* run: $ mix compile
* run the Elixir interactive shell: $ iex -S mix
* run the sample data file: iex(1)> Parsel.deliver("./logs/customerio_sample_data.csv",10)

Note the 2 params for this function: the "path/to/logfile" and how many results to return == the Top "N" reasons for failed email deliveries by frequency in the log file.

## Installation

If [available in Hex](https://hex.pm/docs/publish) (not at the moment), the package can be installed
by adding `parsel` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:parsel, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/parsel](https://hexdocs.pm/parsel).
