import os
import osproc
import sequtils

proc hc*(args: varargs[string]) =
  let
    clientBin = findExe "herbstclient"
    process = startProcess(clientBin, args = args)
  discard waitForExit process

proc hcn*(arg1: string, args: seq[string]) =
  hc(@[arg1] & args)

proc hcn*(arg1, arg2: string, args: seq[string]) =
  hc(@[arg1, arg2] & args)

proc hcn*(arg1, arg2, arg3: string, args: seq[string]) =
  hc(@[arg1, arg2, arg3] & args)
