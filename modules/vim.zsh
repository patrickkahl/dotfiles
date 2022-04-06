export EDITOR="vim"
export VISUAL="vim"

# alias vi='vim'

if _exists nvim; then
  export EDITOR="nvim"
  export VISUAL="nvim"

  if [ ! -d "$HOME/.config/nvim" ]; then
    ln -s "$DOTFILES/nvim" "$HOME/.config/nvim"
  fi

  # alias vim='nvm use default && nvim'
  # alias vim='fnm exec --using=v16 nvim'

  function v() {
    command fnm exec --using=v16 nvim "$@"
  }


fi

plugins+=(vi-mode)
