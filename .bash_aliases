alias ls="ls -G"
alias cb="pbcopy"

alias sleepless="pmset -g assertions | egrep '(PreventUserIdleSystemSleep|PreventUserIdleDisplaySleep)'"

alias mem="top -l 1|grep love|cut -f8,9"

alias cdsaves="cd '/Users/andras/Library/Application Support/LOVE/Terraforming-Earth/saves'"

alias bs='cscreen -d 32 -x 1440 -y 900'
alias gs='cscreen -d 32 -x 2880 -y 1800'

alias ks='for f in `ps aux | grep "Study\|Opti" | sed -E "s/andras *([0-9]*).*/\1/g"`; do kill $f; done'

unix_timestamp() {
    date -r "${1:0:10}"
}
alias ts=unix_timestamp

alias eq='curl -X "GET"  -H "accept: application/json" "https://beaconcha.in/api/v1/validators/queue" | jq .'
alias eqd='eq | jq .data.beaconchain_entering/1800'
