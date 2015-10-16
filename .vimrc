set nocompatible " be iMproved
filetype off " required! /** 从这行开始，vimrc配置 **/
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" kien/ctrlp.vim  --------------------------------------------------- ctrlp.vim
 Bundle 'kien/ctrlp.vim'
 let g:ctrlp_working_path_mode = 'ra'
 set wildignore+=*/tmp/*,*.so,*.swp,*.zip,.DS_Store     " MacOSX/Linux
 let g:ctrlp_custom_ignore = {
             \'dir':  '\v[\/]\.(git|hg|svn|scss-cache)$',
             \'file': '\v\.(exe|so|dll)$',
             \'link': 'some_bad_symbolic_links',
             \ }

"NERDTreeToggle--------
Bundle 'scrooloose/nerdtree'
map <F10> :NERDTreeToggle<CR>
map <F10> <ESC>:NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'Shougo/neocomplcache'
let g:neocomplcache_enable_at_startup=1


"YouCompleteMe-------------
"Bundle 'Valloric/YouCompleteMe'

"zencoding 设置
"Bundle 'ZenCoding.vim'
"let g:user_zen_expandabbr_key='<S-O>'
"let g:use_zen_complete_tag = 1

"emmet-vim
Bundle 'mattn/emmet-vim'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstal
let g:user_emmet_expandabbr_key = '<F5>'

"注释插件
"光标在函数上，用 :Dox 自动生成函数的说明。
"光标在文件头，用 :DoxAthor 自动生成文件说明。
Bundle 'DoxygenToolkit.vim'
let g:DoxygenToolkit_briefTag_pre="@synopsis  "
let g:DoxygenToolkit_paramTag_pre="@param "
let g:DoxygenToolkit_returnTag="@returns   "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="Drunkedcat"
let g:DoxygenToolkit_licenseTag="GPL 2.0"

let g:DoxygenToolkit_authorName="licuiting, 250602615@qq.com"
let s:licenseTag = "Copyright(C)\<enter>"
let s:licenseTag = s:licenseTag . "For free\<enter>"
let s:licenseTag = s:licenseTag . "All right reserved\<enter>"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1

"grep.vim----------------------
"Bundle 'grep.vim'

Bundle 'EasyGrep'

"nerdcommenter
Bundle 'scrooloose/nerdcommenter'
" 注释的时候自动加个空格, 强迫症必配
let g:NERDSpaceDelims=1
let g:mapleader = ","

"Plugin 'JulesWang/css.vim' " only necessary if your Vim version < 7.4
"Plugin 'cakebaker/scss-syntax.vim'
"au BufRead,BufNewFile *.scss set filetype=scss.css
"autocmd FileType scss set iskeyword+=-


" Plugin 'othree/html5.vim'

Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
map <c-f> :call JsBeautify()<cr>
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
autocmd FileType scss noremap <buffer> <c-f> :call CSSBeautify()<cr>

autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>
autocmd FileType scss vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

"Bundle 'bufexplorer.zip'
"let g:bufExplorerDefaultHelp=0       " Do not show default help.
"let g:bufExplorerShowRelativePath=1  " Show relative paths.
"let g:bufExplorerSortBy='mru'        " Sort by most recently used.

"在需要跳转的位置按%, 跳转到匹配位置
Bundle 'vim-scripts/matchit.zip'


syntax enable 
" set autochdir 
set background=dark
colorscheme molokai
set foldmethod=indent "设置折叠


filetype plugin indent on
set number " 显示行号
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4 " 设定 tab 长度为 4
set smartindent " 开启新行时使用智能自动缩进
set hls

"vim 分栏快捷键映射
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"代码移动
Bundle 'yueyoum/vim-linemovement'
let g:linemovement_down="<c-i>"
" let g:linemovement_up="<c-i>"

"多光标
Bundle 'terryma/vim-multiple-cursors'
"let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-m>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"设置编码格式
:set encoding=utf-8
:set fileencodings=ucs-bom,utf-8,cp936
:set fileencoding=utf-8
:set termencoding=utf-8
"设置粘贴快捷键
set pastetoggle=F9;

" Automatic updating vimrc 
if has("autocmd") 
autocmd bufwritepost .vimrc source $MYVIMRC 
endif
