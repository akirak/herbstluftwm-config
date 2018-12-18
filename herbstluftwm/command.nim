import keybindings
import sequtils

let
  # Used in use_index
  next* = "+1"
  prev* = "-1"
  # directions
  dirBottom* = "bottom"
  dirDown* = "down"
  dirRight* = "right"
  dirUp* = "up"
  dirLeft* = "left"

let
  wmReload* = @["reload"]
  wmQuit* = @["quit"]

proc use_index*(index: string): Command =
  @["use_index", index]

proc use_index*(index: int): Command =
  @["use_index", $index]

proc move_index*(index: string): Command =
  @["move_index", index]

proc move_index*(index: int): Command =
  @["move_index", $index]

# proc spawn*(cmd: seq[string]): Command =
#   @["spawn"] & cmd

# proc spawn*(cmd: varargs[string]): Command =
#   @["spawn"] & cmd

# proc spawn*(cmd: string): Command =
#   @["spawn", cmd]

proc focus*(direction: string): Command =
  @["focus", direction]

proc shiftWindow*(direction: string): Command =
  @["shift", direction]

proc splitFrame*(direction: string, ratio: float): Command =
  @["split", direction, $ratio]

proc resizeFrame*(direction: string, ratio: float): Command =
  @["resize", direction, $ratio]

proc resizeLeft*(ratio: float): Command = resizeFrame("left", ratio)
proc resizeRight*(ratio: float): Command = resizeFrame("right", ratio)
proc resizeUp*(ratio: float): Command = resizeFrame("up", ratio)
proc resizeDown*(ratio: float): Command = resizeFrame("down", ratio)

let
  focusLeft* = focus "left"
  focusRight* = focus "right"
  focusDown* = focus "down"
  focusUp* = focus "up"
  shiftLeft* = shiftWindow "left"
  shiftRight* = shiftWindow "right"
  shiftDown* = shiftWindow "down"
  shiftUp* = shiftWindow "up"
  closeWindow* = @["close"]
  explodeFrame* = @["split", "explode"]
  removeFrame* = @["remove"]
  toggleFloating* = @["floating", "toggle"]
  toggleTiling* = @["pseudotile", "toggle"]
  toggleFullscreen* = @["fullscreen", "toggle"]
