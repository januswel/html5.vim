" vim compiler file
" Filename:     html5.vim
" Compiler:     html5
" Maintainer:   janus_wel <janus.wel.3@gmail.com>
" Version:      1.00
" License:      MIT License {{{1
"   See under URL.  Note that redistribution is permitted with LICENSE.
"   http://github.com/januswel/html5.vim/LICENSE

if exists('current_compiler')
    finish
endif
let current_compiler = 'html5'

if exists(':CompilerSet') != 2
    command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=tidy\ -raw\ -quiet\ -errors\ --gnu-emacs\ yes\ --new-blocklevel-tags\ svg,circle
CompilerSet errorformat=%f:%l:%c:\ %t%*[^:]:\ %m

" vim: ts=4 sw=4 sts=0 et
