PROMPT="%(?.%F{green}.%F{red})%B%~ %(!.#.>)%b%f "

# create github repository, pass --private to create private repository
mkrepo() {
  command git init
  command git add -A 2>/dev/null
  command git commit -m "$(date)" 2>/dev/null

  if [[ "$#" == "0" ]]; then
    command gh repo create $(basename $(pwd)) -d '' --push -s . --public
  else
    command gh repo create $(basename $(pwd)) -d '' --push -s . "$@"
  fi
}

# git add & git commit at once | git push
@git() {
  if [[ "$#" == "0" ]]; then
    command git add -A 2>/dev/null
    command git commit -m "$(date)" 2>/dev/null
    command git push
  elif [[ "$#" == "1" ]]; then
    command git add -A 2>/dev/null
    command git commit -m "$1" 2>/dev/null
    command git push
  else
    command echo 'Usage:'
    command echo ' @git                  ~ pushes commit with default datetime'
    command echo ' @git "Custom message" ~ pushes commit with custom message'
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

# rename current working dir or an existing folder
rename() {
  if [[ "$#" == "1" ]]; then
    command [ ! -d "../$1/" ] && rsync -a "$(pwd)/" "../$1" && rm -rf "$(pwd)/" && cd "../$1/"
  elif [[ "$#" == "2" ]]; then
    command [ ! -d "$2/" ] && rsync -a "$1/" "$2" && rm -rf "$1/"
  else
    command echo "Usage:"
    command echo " rename new_dirname         ~ renames current working dir"
    command echo " rename dirname new_dirname ~ renames existing dir to new"
  fi
}
