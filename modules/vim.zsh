export EDITOR="vim"
export VISUAL="vim"

alias vi='vim'

function initVim {
    export VIMRUNTIME="$ZINIT[PLUGINS_DIR]/vim---vim/runtime"
}

zinit ice as"program" atclone"rm -f src/auto/config.cache; \
    ./configure --prefix=$ZPFX" atpull"%atclone" \
    make"all install" pick"$ZPFX/bin/vim"
zinit light vim/vim