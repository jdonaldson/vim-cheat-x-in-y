function! cheat#ToggleCheatSheet()
    let file_type = &ft
    if  has_key(g:cheat_ft_map, file_type)
        let file_type = g:cheat_ft_map[file_type]
    endif
    let pathname = 'learnxinyminutes/'.file_type.'.html.markdown'
    let paths = split(globpath(&rtp,pathname),'\n')

    let altpathname = 'cheat/'.file_type.'.md'
    let altpaths = split(globpath(&rtp,altpathname),'\n')

    let path = ''
    if len(paths) == 0
        let paths = altpaths

        if len(paths) == 0
            echomsg 'No cheat sheet found for '.&ft
            return
        endif
    endif

    let path = paths[0] 

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

