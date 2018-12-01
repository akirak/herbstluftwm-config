import os
import osproc

proc hc*(args: varargs[string]) =
  let
    clientBin = findExe "herbstclient"
    process = startProcess(clientBin, args = args)
  discard waitForExit process
