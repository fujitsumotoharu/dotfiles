export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## gitのブランチ名を常に表示する対応
autoload -Uz vcs_info
precmd() { vcs_info }
setopt prompt_subst
# パス表示「現在ディレクトリのみ」
PROMPT='%n@%m %1~ ${vcs_info_msg_0_}%# '
# パス表示「フルパス表示」
# PROMPT='%n@%m %~ ${vcs_info_msg_0_}%# '
zstyle ':vcs_info:git:*' formats '(%b)'

# jenv settings
# ref: https://gist.github.com/gramcha/81dcec3f1e4ce8cffd7f248d3e2a42a7
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
