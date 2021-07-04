if exists("g:loaded_surround") && (!exists("g:surround_no_mappings") || ! g:surround_no_mappings) && maparg('cs', 'n') !=# ''
    " based on https://github.com/tpope/vim-surround/blob/f51a26d3710629d031806305b6c8727189cd1935/plugin/surround.vim#L599
    nmap dk  <Plug>Dsurround
    nmap ck  <Plug>Csurround
    nmap cK  <Plug>CSurround
    nmap yk  <Plug>Ysurround
    nmap yK  <Plug>YSurround
    nmap ykk <Plug>Yssurround
    nmap yKk <Plug>YSsurround
    nmap yKK <Plug>YSsurround
    xmap K   <Plug>VSurround
    xmap gK  <Plug>VgSurround
    if !exists("g:surround_no_insert_mappings") || ! g:surround_no_insert_mappings
        if !hasmapto("<Plug>Isurround","i") && "" == mapcheck("<C-S>","i")
            imap    <C-K> <Plug>Isurround
        endif
        imap      <C-G>k <Plug>Isurround
        imap      <C-G>K <Plug>ISurround
    endif
endif
