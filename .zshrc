# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

#Add in Powerlevel 10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

#Mac or Linux specific commands
case `uname` in
  Darwin) #Mac-only commands
    eval "$(/opt/homebrew/bin/brew shellenv)"

    export NVM_DIR="$HOME/.nvm"
    [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
    [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
  ;;
  Linux) #Linux-only commands
    # if uwsm check may-start; then # Autostart hyprland via uwsm
    #     exec uwsm start hyprland.desktop
    # fi
    #
  ;;
esac

if [ -n "$WSLENV" ]; then #Windows-only commands
    alias ssh='ssh.exe'
    alias ssh-add='ssh-add.exe'
    git config --global core.sshCommand ssh.exe
fi

#ZSH Plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

autoload -Uz compinit && compinit #Atomatically load completions

#ZSH history settings
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# FZF Shell integrations
eval "$(fzf --zsh)"


#Aliases
alias vconf="nvim ~/.config/nvim/lua/bababue"
alias zconf="nvim ~/.zshrc"
alias ls='ls --color'
alias v=nvim
alias ts=trash
alias whatsmyip="curl http://ipecho.net/plain; echo"
alias dlv='yt-dlp -S "ext" -S "height:1080"'
alias dla="yt-dlp --extract-audio --audio-format mp3"
alias ..="cd .."
alias ...="cd ../.."
alias vnew='python3 -m venv .venv && source .venv/bin/activate && whereis python'
alias vinstall='pip install -r requirements.txt'
alias vactivate='source .venv/bin/activate'
alias pwf='readlink -f '



# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


#Add GO to path
export PATH="$HOME/go/bin:$PATH"



