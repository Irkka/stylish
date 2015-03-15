# The primary prompt statement
# \u username
# \h host
# \w full path to cwd
# \d The date, in "Weekday Month Date" format (e.g., "Tue May 26"). 
# \h The hostname, up to the first . (e.g. deckard) 
# \H The hostname. (e.g. deckard.SS64.com)
# \j The number of jobs currently managed by the shell. 
# \l The basename of the shell's terminal device name. 
# \s The name of the shell, the basename of $0 (the portion followingthe final slash). 
# \t The time, in 24-hour HH:MM:SS format. 
# \T The time, in 12-hour HH:MM:SS format. 
# \@ The time, in 12-hour am/pm format. 
# \u The username of the current user. 
# \v The version of Bash (e.g., 2.00) 
# \V The release of Bash, version + patchlevel (e.g., 2.00.0) 
# \w The current working directory. 
# \W The basename of $PWD. 
# \! The history number of this command. 
# \# The command number of this command. 
# \$ If you are not root, inserts a "$"; if you are root, you get a "#"  (root uid = 0) 

#\nnn   The character whose ASCII code is the octal value nnn. 
PS1="\u@\h:\W \$ "

# Continued line statement, e.g. \
PS2="==> "

# Select prompt, e.g. select hello in world me you; do case $hello in *) echo $hello; esac; done
PS3="choose wisely=>"

# Debug mode prefix
PS4='${0}#${LINENO} ++ '

# Executed before PS1 is printed
PROMPT_COMMAND='echo -n "$(date +%H:%M)|"'
