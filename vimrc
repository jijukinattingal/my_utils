set nocompatible
set et
set sw=4
set sts=4
set smarttab
set tabstop=4
set shiftwidth=4
set showmatch
set guioptions-=T
set ruler
set hls
set incsearch
set nu
set ic
set textwidth=90
set laststatus=2
set nows
"set mouse=a
"highlight Normal guibg=DarkBlue guifg=white


:highlight ExtraWhitespace ctermbg=red guibg=red

:match ExtraWhitespace /\s\+\%#\@<!$/


:au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
:au InsertLeave * match ExtraWhitespace /\s\+$/



" Show leading whitespace that includes spaces, and trailing whitespace.
":autocmd BufWinEnter * match ExtraWhitespace /^\s* \s*\|\s\+$/

filetype plugin indent on
"source /local/mnt/workspace/jijuk/temp/cscope/cscope_maps.vim
"source /local/mnt/workspace/my_home/.vim/cscope/cscope_maps.vim
"source ~/.vim/plugin/cscope/cscope_maps.vim
":cscope add cscope.out

" :colorscheme slate

function! ShowFunc()
    let gf_s = &grepformat
    let gp_s = &grepprg
    let &grepformat = '%*\k%*\sfunction%*\s%l%*\s%f %*\s%m'
    let &grepprg = 'ctags -x --c-types=f --sort=no -o -'
    write
    silent! grep %
    cwindow
    let &grepformat = gf_s
    let &grepprg = gp_s
endfunc
