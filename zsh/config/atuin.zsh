if ! folder_exists ~/.atuin/bin; then;
  curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh
fi

if command_exists atuin; then;
  eval "$(atuin init zsh)"
fi
