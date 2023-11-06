#!/bin/bash

# Function to execute the command
execute_command() {
    echo "Change detected! Executing command..."
    killall $(ps aux | grep -E 'python.*nikola' | awk '{print $2}' | head -n 1)
    nikola build && nikola serve & 
}

# Watch for changes in the current directory
inotifywait -m -q -r -e modify,move,create,delete . |
while read -r directory event filename; do
      execute_command
done



