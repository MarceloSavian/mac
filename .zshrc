export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# NVM path for Neovim/Mason
export PATH="$HOME/.nvm/versions/node/v24.11.0/bin:$PATH"


# opencode
export PATH=/Users/marcelosavian/.opencode/bin:$PATH

# pnpm
export PNPM_HOME="/Users/marcelosavian/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
