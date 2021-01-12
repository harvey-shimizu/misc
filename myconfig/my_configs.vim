"
"
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
"
" *************** Plugins begin from here *************************************************************
call plug#begin('~/.vim_runtime/autoload')
" Plugin Manager
Plug 'junegunn/vim-plug'
" Make sure you use single quotes

" *************** Below Plugins are tools provided for completion ************************************
"
""a code-completion engine for Vim
"Plug 'ycm-core/YouCompleteMe'

""a code-completion engine for Vim
Plug 'codota/tabnine-vim'

" *************** Below Plugins are tools provided for colored codes *********************************
"
"Zenburn is a low-contrast color scheme for Vim. It’s easy for your eyes and designed to keep you in the zone for long programming sessions.
"Plug 'jnurmine/Zenburn'
"Solarized is a sixteen color palette (eight monotones, eight accent colors) designed for use with terminal and gui applications.
"Plug 'altercation/vim-colors-solarized'

"Collection of awesome color schemes for Vim, merged for quick use.
Plug 'rafi/awesome-vim-colorschemes'

"Designed as a bright theme with pastel 'retro groove' colors and light/dark mode switching in the way of solarized. The main focus when developing gruvbox is to keep colors easily distinguishable, contrast enough and still pleasant for the eyes.
Plug 'morhetz/gruvbox'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"This plugin aims at making NERDTree feel like a true panel, independent of tabs.
"Do this via :NERDTreeTabsToggle
Plug 'jistr/vim-nerdtree-tabs'

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

"TabNine offers a cloud-based configuration, which allows for usage of more robust models that cannot be run locally on a development machine. 
"Plug 'codota/tabnine-vim'

" Plugin outside ~/.vim/plugged with post-update hook
" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Scratch for writing memo without saving.
" Unobtrusive scratch window. Inspired by scratch.vim, enhanced.'
Plug 'mtth/scratch.vim'

"--Python Semantic highlightiing for Vim
"Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
"--Python Semantic highlightiing for Vim, but it comes with a lot highlighting 
"Plug 'python-mode/python-mode' 'branch': 'develop' }

"Syntastic is a syntax checking plugin for Vim created by Martin Grenfell. 
Plug 'vim-syntastic/syntastic'

"Python Syntax highlightiing for Vim
Plug 'vim-python/python-syntax'

"ALE (Asynchronous Lint Engine) is a plugin providing linting (syntax checking and semantic errors) in NeoVim 0.2.0+ and Vim 8 while you edit your text files, and acts as a Vim Language Server Protocol client.
Plug 'dense-analysis/ale'

"Easy Motion
Plug 'easymotion/vim-easymotion'

"A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'

"vim-commentary is extremely simple to use: 
"Use gcc to comment out a line (takes a count), gc to comment out the target of a motion (for example, gcap to comment out a paragraph), and gc in visual mode to comment out the selection. That’s it.
Plug 'tpope/vim-commentary'

"The "Tag List" plugin is a source code browser plugin for Vim and provides an overview of the structure of source code files and allows you to efficiently browse through source code files for different programming languages.  
Plug 'vim-scripts/taglist.vim'

Plug 'ap/vim-buftabline'
"Plug 'zefei/vim-wintabs'
"Plug 'zefei/vim-wintabs-powerline'
"
"
" *************** Below Plugins are tools provided for improving key inputs efficiency ******************************

"Radical.vim is a Vim plugin that converts between the number representations encountered when programming, that is in addition to decimal, hex, octal, and binary representation. 
Plug 'glts/vim-radical'
"Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.
Plug 'tpope/vim-surround'
"If you've ever tried using the . command after a plugin map, you were likely disappointed to discover it only repeated the last native command inside that map, rather than the map as a whole. That disappointment ends today. Repeat.vim remaps . in a way that plugins can tap into it.
Plug 'tpope/vim-repeat'

"Auto Pairs
"Insert or delete brackets, parents, quotes in pair.
Plug 'jiangmiao/auto-pairs'

"Powerline is a statusline plugin for vim, and provides statuslines and prompts for several other applications, including zsh, bash, fish, tmux, IPython, Awesome, i3 and Qtile.
Plug 'powerline/powerline'

"Fugitive is the premier Vim plugin for Git. Or maybe it's the premier Git plugin for Vim? Either way, it's "so awesome, it should be illegal". That's why it's called Fugitive.
"Plug 'tpope/vim-fugitive'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'
"
"Plug 'tc50cal/vim-terminal'

" **************** Below plugins are provided for VimL ************************************

"Magnum is a big integer library for Vim plugins written entirely in Vim script. Currently it provides just a small set of predicates, arithmetic, and conversion operations. It also includes a simple random number generator.
" Usage :h magnum
Plug 'glts/vim-magnum'

" **************** Below plugins are provided for future or etc ************************************
"
"Plug 'tmhedberg/SimpylFold'
"
" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" color_coded: semantic highlighting with vim
" color_coded is a vim plugin that provides realtime (fast), tagless code highlighting for C++, C, and Objective C using libclang.
"Plug 'jeaye/color_coded'

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'
"
" Vim Tutor Manual
Plug 'vim/vim'
" Answers for Learning VimLanguage The Hard Way
Plug 'degustaf/LvimscriptTHW'

" Initialize plugin system
call plug#end()
" **************** End of plugins manager **********************************************************

"set nocompatible              " be iMproved, required
"filetype off                  " required

" *************** Another Plugins Manager ********************
"
" Vundle is short for Vim bundle and is a Vim plugin manager.
"Plug 'gmarik/Vundle.vim'

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/Vundle.vim
"call vundle#begin('~/.vim_runtime/autoload')
"call vundle#begin()
" ****** alternatively, pass a path where Vundle should install plugins
" ****** call vundle#begin('~/some/path/here')

"Plugin 'VundleVim/Vundle.vim'

"Easy Motion
"Plugin 'easymotion/vim-easymotion'
"Plugin 'zxqfl/tabnine-vim'

"call vundle#end()            " required
"filetype plugin indent on    " required
"
" **************** End of plugins manager ************************************

"silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
