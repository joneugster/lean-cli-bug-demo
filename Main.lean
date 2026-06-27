module
public meta import CliDemo

open Cli

meta def exampleCmd : Cmd := `[Cli|
  exampleCmd VIA runExampleCmd; ["0.0.1"]
  "Works in v4.29.1"

  FLAGS:
    t;            "not implemented"
    i, invert;    "not implemented"
  ARGS:
    input : String;      "unused"
    ...outputs : String; "unused"
]

public meta def main (args : List String) : IO UInt32 :=
  exampleCmd.validate args
