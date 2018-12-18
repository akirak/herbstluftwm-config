import herbstluftwm/common
import herbstluftwm/keybindings
import herbstluftwm/keydefs
import herbstluftwm/command
import herbstluftwm/misc
import herbstluftwm/main

let
  myMod = mod4
  terminal = "alacritty"
  resizeStep = 0.05

# TODO: Set attributes
# TODO: Set rules

herbstluftwmMain(keybindings = @[
    (myMod p, @["spawn", "rofi", "-show", "run"]),
    (myMod shift c, closeWindow),
    (myMod ret, @["spawn", terminal]),
    (myMod j, focusDown),
    (myMod k, focusUp),
    (myMod h, focusLeft),
    (myMod l, focusRight),
    (myMod shift j, shiftDown),
    (myMod shift k, shiftUp),
    (myMod shift h, shiftLeft),
    (myMod shift l, shiftRight),
    (myMod ctrl j, resizeDown resizeStep),
    (myMod ctrl k, resizeUp resizeStep),
    (myMod ctrl h, resizeLeft resizeStep),
    (myMod ctrl l, resizeRight resizeStep),
    (myMod shift r, wmReload),
    (myMod shift q, wmQuit),
    (myMod u, splitFrame(dirBottom, 0.5)),
    (myMod o, splitFrame(dirRight, 0.5)),
    (myMod x, removeFrame),
    (myMod t, toggleFloating),
    (myMod f, toggleFullscreen),
    (myMod shift t, toggleTiling),
    (myMod ctrl space, explodeFrame),
    (myMod space, @["cycle_layout", "1"]),
    (myMod z, @["jumpto", "urgent"]),
    (myMod num1, use_index 1),
    (myMod num2, use_index 2),
    (myMod num3, use_index 3),
    (myMod num4, use_index 4),
    (myMod shift num1, move_index 1),
    (myMod shift num2, move_index 2),
    (myMod shift num3, move_index 3),
    (myMod shift num4, move_index 4),
    (myMod right, use_index next),
    (myMod left, use_index prev)
],
tags = @["1", "2", "3"])
