import herbstluftwm/common
import herbstluftwm/keybindings
import herbstluftwm/keydefs
import herbstluftwm/command
import herbstluftwm/misc
import herbstluftwm/main

let
  myMod = mod4

herbstluftwmMain(keybindings = @[
    (myMod p, @["spawn", "rofi", "-show", "run"]),
    (myMod ret, @["spawn", "alacritty"]),
    (myMod shift r, wmReload),
    (myMod shift q, wmQuit),
    (myMod num1, use_index 1),
    (myMod num2, use_index 2),
    (myMod num3, use_index 3),
    (myMod num4, use_index 4),
    (myMod right, use_index next),
    (myMod left, use_index prev)
],
tags = @["1", "2", "3"])
