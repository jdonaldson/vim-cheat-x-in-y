" Loads a 'cheat file' based on the filetype currently being edited.
if exists("g:loaded_cheat")
    finish
end
let g:loaded_xinycheat = 1

let g:cheat_ft_map = {
            \ "objc": "objective-c",
            \ "lisp": "elisp",
            \ "cs" : "csharp"
            \}

command ToggleCheat call cheat#ToggleCheatSheet()

