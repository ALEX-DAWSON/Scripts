#!/usr/bin/env bash
hello () {

name=$1

filling="Hello ${name} \n Today is $(date | awk '{print $2 " " $3 " " $4}') \n Your fortune for today is: \n $(fortune)"

ginny() {
    clear
    echo -e ${filling} | cowsay -f dragon | lolcat
}

ethan() {
    clear
    echo -e ${filling} | cowthink -f bunny | lolcat
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
        *) everyone ;;
    esac
}

