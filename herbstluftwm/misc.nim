import common

proc addTag*(tag: string) =
  hc "add", tag

proc addTag*(index: int) =
  addTag $index

proc renameDefault*(tag: string) =
  hc "rename", "default", tag

proc emit_hook*(hook: string) =
  hc "emit_hook", hook

proc unlock*() =
  hc "unlock"
