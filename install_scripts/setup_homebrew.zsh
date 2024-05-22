#!/usr/bin/env zsh

source $DOTFILES/zsh/utils.zsh

echo "\n<<< Starting Homebrew setup >>>\n"

if is_macos; then

  if command_exists brew; then
    prompt_user "Homebrew is already installed. Do you want to reinstall it?" \
      '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"' \
      'eval "$(/opt/homebrew/bin/brew shellenv)"'
  else
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
  fi

  echo $HOMEBREW_BUNDLE_FILE_GLOBAL
  brew bundle --verbose --file=$HOMEBREW_BUNDLE_FILE_GLOBAL
fi
