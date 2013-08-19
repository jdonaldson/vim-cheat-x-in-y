function! cheat#ToggleCheatSheet()
    let pathname = 'learnxinyminutes/'.&ft.'.html.markdown'
    let paths = split(globpath(&rtp,pathname),'\n')
    let path = ''

    if len(paths) < 1
        echomsg 'No cheat sheet found for '.&ft
        return
    else
        let path = paths[0] 
    endif

    if buflisted(expand(path))
        exe 'buffer '.bufname(expand(path))
        bd
    elseif filereadable(path)
        set splitright
        execute ':vsplit +setlocal\ noma\ ro '. path
        wincmd h
    else
        echomsg "file not readable: ".path
    endif
endfunction

