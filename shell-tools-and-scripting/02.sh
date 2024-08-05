# Save the cueent directory to a file when marco is called
function marco(){
  echo "$PWD" > ~/.marco_polo_dir
}

# Change to the saved directory when polo is called
function polo() {
  if [ -f ~/.marco_polo_dir ]; then
    dir=$(cat ~/.marco_polo_dir)
    if [ -d "$dir" ]; then
      cd "$dir"
    else
      echo "Error: Directory $dir does not exist."
    fi
  else
    echo "Error: No directory saved by marco."
  fi
}

# Remember to save this code to marco.sh.
# And run the command `source marco.sh` to load it.
