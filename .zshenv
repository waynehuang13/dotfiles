# Added locations to path variable
export PATH=$HOME/.local/bin:$HOME/.bin:$HOME/.cargo/bin:$PATH

# python venv activation
cd() {
    builtin cd "$@"
    local current_dir="$PWD"
    local parent_dir="$current_dir"

    while [ "$parent_dir" != "/" ]; do
        if [ -f "$parent_dir/.venv/bin/activate" ]; then
            source "$parent_dir/.venv/bin/activate"
            return 0
        fi
        parent_dir="$(dirname "$parent_dir")"
    done

    if [ -n "$VIRTUAL_ENV" ] && [ "$parent_dir" = "/" ]; then
        deactivate
    fi
}

# export PATH=$PATH:$HOME/workspace/central-cli

# NVM directory
export NVM_DIR="$HOME/.nvm"

# Vagrant config needed inside WSL2
export VAGRANT_DEFAULT_PROVIDER="virtualbox"
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"

export EDITOR=vim
export KUBE_EDITOR=vim

# export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
