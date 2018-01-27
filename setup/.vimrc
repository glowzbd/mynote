 " disable vi compatibility (emulation of old bugs)
 set nocompatible
 filetype off
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'Valloric/YouCompleteMe'
 Plugin 'scrooloose/nerdcommenter'
 Plugin 'Chiel92/vim-autoformat'
 Plugin 'mattn/emmet-vim'
 Plugin 'tmhedberg/matchit'
 Plugin 'vim-scripts/DoxygenToolkit.vim'
 Plugin 'vim-scripts/LanguageTool'
 call vundle#end()
 filetyp plugin indent on
 " set spell
 " set UTF-8 encoding
 set enc=utf-8
 set fenc=utf-8
 set termencoding=utf-8
 " use indentation of previous line
 set autoindent
 " use intelligent indentation for C
 set smartindent
 " configure tabwidth and insert spaces instead of tabs
 set tabstop=2        " tab width is 4 spaces
 set shiftwidth=2     " indent also with 4 spaces
 set expandtab        " expand tabs to spaces
 " wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
 " set textwidth=120
 set hlsearch
 " turn syntax highlighting on
 " set t_Co=256
 syntax on
 " turn line numbers on
 " set number
 " highlight matching braces
 set showmatch
 " intelligent comments
 set comments=sl:/*,mb:\ *,elx:\ */
 " search result show immediately
 set incsearch
 " switch between panels
 map <F2> <C-W><C-W>
 map <F3> :previous<CR>
 map <F4> :next<CR>
 " make
 map <F7> :let my_line=line(".")<CR>:let my_col=col(".")<CR>:w<CR>:make<CR><CR><CR> :call cursor(my_line,my_col)<CR>
 map <S-F7> :w<CR>:make clean all<CR><CR><CR>
 imap <F7> <ESC>:let my_line=line(".")<CR>:let my_col=col(".")<CR>:w<CR>:make<CR><CR><CR> :call cursor(my_line,my_col)<CR> i
 imap <S-F7> <ESC>:w<CR>:make clean all<CR><CR><CR>
 " text format latex
 map <F8> :let my_line=line(".")<CR>:let my_col=col(".")<CR> ?^$\\|^\s*\(\\begin\\|\\end\\|\\label\)?1<CR>gq//-1<CR> :call cursor(my_line,my_col)<CR>
 imap <F8> <ESC>:w<CR> <F8> i
 autocmd BufReadPost *
 	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal! g`\"" |
	\ endif
 set ruler
 set rulerformat=%25(%{strftime('%I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
 set scrolloff=2
 augroup project
     autocmd!
     autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
 augroup END
 "set cc=80
 " YouCompleteMe
 nnoremap <leader>jd :YcmCompleter GoTo<CR>
 let g:ycm_confirm_extra_conf = 0
 let g:ycm_autoclose_preview_window_after_insertion = 1
 let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
 let g:ycm_collect_identifiers_from_tags_files = 1

 augroup CursorLine
 au!
   au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
   au WinLeave * setlocal nocursorline
 augroup END
 " delete trailing space when exit
 fun! <SID>StripTrailingWhitespices()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
 endfun 
 autocmd FileType c,cpp,java,php,ruby,python,pl,sh autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespices()

 " indentation 
 let g:indentLine_color_term = 220
 let g:indentLine_char = '┆'

 " auto format, using clang-format
 map <F10> :Autoformat<CR>
 autocmd BufRead,BufNewFile *.msg set textwidth=0 cc=0
 
 " power line
 "python from powerline.vim import setup as powerline_setup
 "python powerline_setup()
 "python del powerline_setup
 "set laststatus=2 " Always display the statusline in all windows
 "set showtabline=2 " Always display the tabline, even if there is only one tab
 "set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
