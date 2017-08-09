" Only do this when not done yet for this buffer
"if exists("b:did_ftplugin")
"    finish
"endif
"let b:did_ftplugin = 1

function! JASMarkdownFolds()
    let estalinea = getline(v:lnum)
    "echom (v:lnum)
    if match(estalinea,'^###') >= 0
        "echom "> 3 en linea-"(v:lnum)
        return ">3"
    elseif match(estalinea,'^##') >= 0
        "echom "> 2 en linea-"(v:lnum)
        return ">2"
    elseif match(estalinea,'^#') >= 0
        "echom "> 1 en linea-"(v:lnum)
        return ">1"
    else
        "echom "= "(v:lnum)
        return "="
    endif
endfunction
setlocal foldmethod=expr
setlocal foldexpr=JASMarkdownFolds()

