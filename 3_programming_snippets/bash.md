---
tags:
  - programming-snippets
---
# bash

## CONDITIONALS

```bash
# string comparison
val="a"
[[ $val == "a" ]] # equal
[[ $val != "a" ]] # not equal

# numerical comparison
num=1
[[ $num -eq 1 ]] # equal
[[ $num -ne 1 ]] # not equal
[[ $num -lt 1 ]] # less than
[[ $num -gt 1 ]] # greater than
[[ $num -ge 1 ]] # greater than or equal
```

## bash cli reading standard input

```bash
echo "What is your name?"
read -r name

echo "What is your last name?"
read -r last_name

echo "Your name is ${name}, and last name is ${last_name}, right?"
```

## bash cli prompt

```bash
read -r -p "Do you want to install fzf? (Y/n)" prompt_response
if [[ $prompt_response == "n" ]]; then
echo "installing fzf cancelled."
else
echo "installing fzf..."
fi
```

## ARITHMETICS

```bash
# syntax; $(( n + n ))

echo $((5 + 5))
echo $(((5 * 5) + 25))
```

## for loop 1 to 10 with both included

```bash
for i in $(seq 1 10); do
  echo "Number: $i"
done
```

## grab and manipulate certain files

```bash
for jsfile in *.js; do
  touch numba.js
  rg "number" "$jsfile" --ignore-case >numba.js
done
```

## creating array and looping over it

```bash
directories=("$home/repos" "$home/repos/projects" "$home/repos/1_web_development_projects")

for dir in "${directories[@]}"; do
  echo "$dir"
done
```

## reversing an array

```bash
reverse_array() {
local Buffer=("$@")
  for ((Index = $# - 1; Index >= 0; Index--)); do
    printf '%s\n' "${Buffer[Index]}"
  done
}

numbers_array=(
                1
                2
                3
                4
                5
)

reverse_array "${numbers_array[@]}"
```

## recursively delete types with specific extensions

```bash
# simple
find /path/to/dir -name "*.extension" -type f -delete

# many at once
extensions=("html" "css" "pdf")
for ext in "${extensions[@]}"; do
  # dir eg: ./
  find /path/to/dir -name "*.$ext" -type f -delete
done
```
