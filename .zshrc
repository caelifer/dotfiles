# Load private keys to SSH agent
_PRIVATE_KEYS_SPEC=$(cat <<__ | grep -v ^#
# Personal keys
~/.ssh/id_rsa
__
)

_PRIVATE_KEYS_TO_LOAD=$(xargs <<<${_PRIVATE_KEYS_SPEC})
_PRIVATE_KEYS_COUNT=$(wc -l <<<${_PRIVATE_KEYS_SPEC} | xargs)
if [ $(ssh-add -l | grep -v "^The agent has no identities" | wc -l) -lt ${_PRIVATE_KEYS_COUNT} ]
then
	eval ssh-add ${_PRIVATE_KEYS_TO_LOAD}
fi
