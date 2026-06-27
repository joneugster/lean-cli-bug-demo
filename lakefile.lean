import Lake
open Lake DSL

require "leanprover" / Cli @ git "6b907cf12b2e445ccb7c24bc208ef04a1f39e84c"

package "CliDemo" where
  version := v!"0.1.0"

@[default_target]
lean_lib CliDemo where

@[default_target]
lean_exe "demo" where
  root := `Main
