import keybindings

proc modKey(prefix: Key, keySeq: KeySeq): KeySeq =
  @[prefix] & keySeq

proc mod1*(keySeq: KeySeq): KeySeq = modKey "Mod1", keySeq
proc mod2*(keySeq: KeySeq): KeySeq = modKey "Mod2", keySeq
proc mod3*(keySeq: KeySeq): KeySeq = modKey "Mod3", keySeq
proc mod4*(keySeq: KeySeq): KeySeq = modKey "Mod4", keySeq
proc shift*(keySeq: KeySeq): KeySeq = modKey "Shift", keySeq
proc alt*(keySeq: KeySeq): KeySeq = modKey "Alt", keySeq
proc ctrl*(keySeq: KeySeq): KeySeq = modKey "Control", keySeq

proc pure(key: Key): KeySeq = @[key]

let
  a* = pure "a"
  b* = pure "b"
  p* = pure "p"
  q* = pure "q"
  r* = pure "r"
  num0* = pure "0"
  num1* = pure "1"
  num2* = pure "2"
  num3* = pure "3"
  num4* = pure "4"
  ret* = pure "Return"
  space* = pure "space"
  escape* = pure "Escape"
  right* = pure "Right"
  left* = pure "Left"
  up* = pure "Up"
  down* = pure "Down"
  tab* = pure "Tab"
  print* = pure "Print"
  f1* = pure "F1"
  f2* = pure "F2"
  f3* = pure "F3"
  f4* = pure "F4"
  f5* = pure "F5"
  f6* = pure "F6"
  f7* = pure "F7"
  f8* = pure "F8"
  f9* = pure "F9"
  f10* = pure "F10"
  f11* = pure "F11"
  f12* = pure "F12"
  button1* = pure "Button1"
  button2* = pure "Button2"
  button3* = pure "Button3"
