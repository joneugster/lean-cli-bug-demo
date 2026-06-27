import Lake
open Lake DSL

require "leanprover" / Cli @ git "7802da01beb530bf051ab657443f9cd9bc3e1a29"

package "CliDemo" where
  version := v!"0.1.0"

@[default_target]
lean_lib CliDemo where

@[default_target]
lean_exe "demo" where
  root := `Main
