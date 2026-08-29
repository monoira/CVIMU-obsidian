set clipboard=unnamedplus

" unmapping space and ctrl+b
unmap <Space>
unmap <C-b>

" || KEYBINDINGS
exmap symbolsactive obcommand darlal-switcher-plus:switcher-plus:open-symbols-active
nmap <Space>ss :symbolsactive<CR>

exmap symbolsall obcommand darlal-switcher-plus:switcher-plus:open-headings
nmap <Space>sS :symbolsall<CR>

exmap quicksearch obcommand global-search:open
nmap <Space>/ :quicksearch<CR>

" search and replace in current file
exmap searchreplace obcommand editor:open-search-replace
nmap <Space>sr :searchreplace<CR>

" center cursor with ctrl+u and ctrl+d
noremap <C-u> <C-u>zz
noremap <C-d> <C-d>zz

" GOTOs
exmap followlink obcommand editor:follow-link
nmap gd :followlink<CR>

exmap openlinknewleaf obcommand editor:open-link-in-new-leaf
nmap gf :openlinknewleaf<CR>

" TABS
exmap prevtab obcommand workspace:previous-tab
nmap [b :prevtab<CR>

exmap nexttab obcommand workspace:next-tab
nmap ]b :nexttab<CR>

exmap bufonly obcommand workspace:close-others
nmap <Space>bo :bufonly<CR>

" FOLDING
exmap togglefold obcommand editor:toggle-fold
nmap za :togglefold<CR>

exmap unfoldall obcommand editor:unfold-all
nmap zR :unfoldall<CR>
