"NIvanchenko 

set nocompatible

let confpath = '~/.config/nvim/' 
let plugspath = confpath . 'plugs' 

function LoadConfFile(filename)
	exec 'source '. g:confpath . a:filename 
endfunction

call LoadConfFile('settings.vim')
call LoadConfFile('mappings.vim')

"Plugins here
call LoadConfFile('PlugInstall.vim')
call LoadConfFile('p_lightline.vim')
call LoadConfFile('p_delimitMate.vim')
call LoadConfFile('p_coc.vim')
call LoadConfFile('p_fzf.vim')
call LoadConfFile('p_vim-easy-align.vim')
call LoadConfFile('p_vifm.vim')
call LoadConfFile('p_vim-easymotion.vim')
call LoadConfFile('p_vim-language-1c-bsl.vim')
call LoadConfFile('p_vimspector.vim')
call LoadConfFile('p_nvim-lspconfig.vim')
call LoadConfFile('p_popup.vim')
call LoadConfFile('p_plenary.vim')
call LoadConfFile('p_telescope.vim')
call LoadConfFile('p_gruvbox.vim')
