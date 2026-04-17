if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g fish_greeting

    set PNPM_HOME /home/rlt/Projects/PNPM_HOME/

    set GO_BIN_PATH /home/rlt/go/bin

    set PATH_3 $HOME/.local/bin:$PATH

    export PNPM_HOME=$PNPM_HOME

    export GO_BIN_PATH=$GO_BIN_PATH

    export PATH="$GO_BIN_PATH:$PNPM_HOME:$PATH_3:$PATH"

    zoxide init fish | source
end
