" Loads a 'cheat file' based on the filetype currently being edited.
if exists("g:loaded_xinycheat")
    finish
end
let g:loaded_xinycheat = 1

let g:cheat_ft_map = {
            \ "objc": "objective-c",
            \ "lisp": "common-lisp",
            \ "cs" : "csharp",
            \ "sh" : "bash",
            \}

command ToggleCheat call cheat#ToggleCheatSheet()

