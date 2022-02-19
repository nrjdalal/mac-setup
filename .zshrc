PROMPT="%(?.%F{green}.%F{red})%B%~ %(!.#.>)%b%f "

# git add & git commit at once
@git() {
  if [[ "$#" == "0" ]]; then
    command git add -A && git commit -m "$(date)"
  else
    command git add -A && git commit -m "$1"
  fi
}

# kill pid by port
close() {
  lsof -i :$1 | awk '{print $2}' | tail +2 | xargs kill -9
}

# override ls without flags
ls() {
  if [[ "$#" == "0" ]]; then
    command tree --filesfirst -aCL 1 | sed -e 's/├── //g' -e 's/└── //g' | tail -n +2
  else
    command ls "$@"
  fi
}
