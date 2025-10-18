if status is-interactive
    # Commands to run in interactive sessions can go here
    neofetch
    set -x FZF_DEFAULT_COMMAND "find /home/eclipse -type f -or -type d -name '.*'"
end
