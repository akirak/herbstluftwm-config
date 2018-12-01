import keybindings
import sequtils

let
  # Used in use_index
  next* = "+1"
  prev* = "-1"

let
  wmReload* = @["reload"]
  wmQuit* = @["quit"]

proc use_index*(index: string): Command =
  @["use_index", index]

proc use_index*(index: int): Command =
  @["use_index", $index]

# proc spawn*(cmd: seq[string]): Command =
#   @["spawn"] & cmd

# proc spawn*(cmd: varargs[string]): Command =
#   @["spawn"] & cmd

# proc spawn*(cmd: string): Command =
#   @["spawn", cmd]
