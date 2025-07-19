#!/usr/bin/env bash
hello () {

name=$1

filling="Hello ${name} \n Today is $(date | awk '{print $3 " " $2 " " $4}') \n Your fortune for today is: \n $(fortune)"

ginny() {
    clear
    echo -e ${filling} | cowsay -f dragon | lolcat
}

ethan() {
    clear
    echo -e ${filling} | cowthink -f bunny | lolcat
}

nathan() {
    clear
    echo -e ${filling} | cowthink -f otter | lolcat
}

everyone() {
    clear
    echo -e ${filling} | cowthink | lolcat
}

    case $1 in  
        Ginny) ginny ;;
        ginny) ginny ;;
        Ethan) ethan ;;
        ethan) ethan ;;
        Nathan) nathan ;;
        nathan) nathan ;;
        *) everyone ;;
    esac
}

