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

# Aliases for custom scripts
alias now-playing='source ./Scripts/grab-np.sh'


# Dependencies on lolcat
alias lolbonsai='cbonsai -i -l | lolcat'
alias lolpipes='pipes | lolcat'
alias lolmatrix='cmatrix | lolcat'
alias lolfetch='neofetch | lolcat'