
#!/bin/bash

# ~/.tmux/update-window-name.sh
# chmod +x ~/.tmux/update-window-name.sh

# Get the terminal associated with the current tmux pane
TTY=$(tmux display-message -p '#{pane_tty}')
TTY=${TTY#/dev/}

# Find ssh running on this terminal
SSH_CMD=$(ps -t "$TTY" -o args= 2>/dev/null | grep -E '(^|[[:space:]])ssh([[:space:]]|$)' | head -1)

if [ -n "$SSH_CMD" ]; then

    # Remove "ssh" from the beginning
    SERVER=$(echo "$SSH_CMD" | sed -E 's/^[[:space:]]*ssh[[:space:]]+//')

    # Remove SSH options if any
    SERVER=$(echo "$SERVER" | sed -E 's/^(-[^ ]+[[:space:]]+)*//')

    # If user@hostname, keep only hostname
    SERVER=$(echo "$SERVER" | sed 's/.*@//')

    # Remove anything after hostname
    SERVER=$(echo "$SERVER" | awk '{print $1}')

    tmux rename-window "$SERVER"
    tmux display-message "Logged into: $SERVER"

else

    tmux display-message "Not logged into any server"

fibind-key v run-shell "~/.tmux/update-window-name.sh"