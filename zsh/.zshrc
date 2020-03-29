alias ll="exa -l"
alias la="exa -la"
alias workspace="cd $HOME/Development/Seat/workspace/"

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
