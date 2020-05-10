# Custom configuration
# Alias
alias workspace="cd $HOME/Development/Seat/workspace/"
alias backend="cd $HOME/Development/Seat/workspace/emobility-mobility-service-backend"
alias zsh-config="atom ~/.zshrc"
alias zim-config="atom ~/.zimrc"
alias ll="exa -l"
alias la="exa -la"
alias java8="jenv global 1.8"
alias java11="jenv global 11.0"

# Funcions
_reverse_search() {
  local selected_command=$(fc -rl 1 | awk '{$1="";print substr($0,2)}' | fzf)
  LBUFFER=$selected_command
}
zle -N _reverse_search
bindkey '^r' _reverse_search

_show_current_dir(){
  dir=$(ls | fzf)
  cd $dir
}
zle -N _show_current_dir
bindkey '^e' _show_current_dir

# Prompt
RPROMPT='%F{green}%*'

# JEnv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"