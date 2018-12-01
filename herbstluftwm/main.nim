import keybindings
import misc
import command

proc herbstluftwmMain*(keybindings: openArray[Keybinding],
                       tags: openArray[string]) =
  emit_hook "reload"
  for tag in tags:
    addTag tag
  renameDefault tags[0]
  keyunbindAll()
  for binding in keybindings:
    keybind binding.key, binding.command
  unlock()
