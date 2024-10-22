function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
COLOR_DEF=$'%f'
COLOR_DATE=$'%F{243}'
COLOR_DIR=$'%F{197}'
COLOR_GIT=$'%F{39}'
setopt PROMPT_SUBST
PROMPT_CWD='${COLOR_DIR}%~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF}'
export NEWLINE=$'\n'
export PROMPT="${NEWLINE}${PROMPT_CWD} $ "
