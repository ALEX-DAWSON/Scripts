# This is still a WIP
# Do not use!!!


add () {

    desti='/usr/share/cowsay/cows'
    file=$2

    cow () {
        cp ${file} ${desti}
        echo Copied ${file} to cowsay successfully!
    }

    allcow () {
        cp ${file}/*.cow ${desti}
    }

    case $1 in
     cow) cow ;;
     allcow) allcow ;;
     *) echo "pick cow to copy over a single file to cowsays or allcow to copy an entire folder of cows" ;;
    esac
}