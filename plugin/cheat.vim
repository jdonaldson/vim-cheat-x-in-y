" Loads a 'cheat file' based on the filetype currently being edited.
if exists("g:loaded_cheat")
    finish
end
let g:loaded_cheat = 1

command ToggleCheat call cheat#ToggleCheatSheet()

