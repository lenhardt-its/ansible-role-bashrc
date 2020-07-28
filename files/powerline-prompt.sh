# Ansible managed file
# add powerline-go prompt
function _update_ps1() {
  PS1="$(/usr/local/bin/powerline-go -error $? -shell bash -hostname-only-if-ssh)"
}
if [ "$TERM" != "linux" ] && [ -f "/usr/local/bin/powerline-go" ]; then
  PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
