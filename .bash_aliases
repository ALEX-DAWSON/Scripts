# To use in your setup
#     go to ".bashrc" in your home folder
#         (don't forget to right click in folder and check "show hidden files")
#     add this code block to your ".bashrc" file

#       if [ -f ./Scripts/.bash_aliases ]; then
#             . ./Scripts/.bash_aliases
#       fi

# Store this "Scripts" folder in your "home" folder


# For system error reports and such
alias sysinfo='inxi -Fxxxpmrz'
alias sysreport='inxi -Fxa > ~/Desktop/System-Report.txt'

#Shortcuts
alias bonsai='cbonsai -i -l'

alias givexperm='chmod +x ~/Scripts/*.sh'
alias addcow='sudo cp ~/Scripts/ascii/*.cow /usr/share/cowsay/cows'

# if [ "pacman -Q | grep wikiman" != "" ] || [ "dpkg -l | grep wikiman" != "" ]; then
#     alias man='wikiman'
#     echo "man command now opens wikiman"
# else
#     echo "Did not find wikiman"
# fi

# Dependencies on lolcat
alias lolbonsai='cbonsai -i -l | lolcat'
alias lolpipes='pipes | lolcat'
alias lolmatrix='cmatrix | lolcat'
alias lolfetch='neofetch | lolcat'

# Colour Variables
# Reset
nc='\033[0m'              # Text Reset

# Regular Colors
black='\033[0;30m'        # Black
red='\033[0;31m'          # Red
green='\033[0;32m'        # Green
yellow='\033[0;33m'       # Yellow
blue='\033[0;34m'         # Blue
purple='\033[0;35m'       # Purple
cyan='\033[0;36m'         # Cyan
white='\033[0;37m'        # White

# Background
on_black='\033[40m'       # Black
on_red='\033[41m'         # Red
on_green='\033[42m'       # Green
on_yellow='\033[43m'      # Yellow
on_blue='\033[44m'        # Blue
on_purple='\033[45m'      # Purple
on_cyan='\033[46m'        # Cyan
on_white='\033[47m'       # White
