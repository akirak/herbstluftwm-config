import common
import sequtils

type
  Key* = string
  KeySeq* = seq[Key]
  Modifier* = proc (origSeq: KeySeq): KeySeq
  Command* = seq[string]
  Keybinding* = tuple[key: KeySeq, command: Command]

proc keyunbindAll*() =
  hc "keyunbind", "--all"

proc toString(keySeq: KeySeq): string =
  foldl keySeq, a & "-" & b

proc keybind*(keyseq: string, command: Command) =
  hcn "keybind", keyseq, command

proc keybind*(keyseq: KeySeq, command: Command) =
  keybind keySeq.toString, command
