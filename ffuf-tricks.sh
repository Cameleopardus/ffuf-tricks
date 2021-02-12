#!/bin/bash

method=$1
shift
DIRECTORY_LIST="/usr/share/wordlists/SecLists/Discovery/Web-Content/directory-list-2.3-big.txt:FUZZ"
EXTENSION_LIST="/usr/share/wordlists/SecLists/Discovery/Web-Content/web-extensions.txt:FUZZ"
SUBDOMAIN_LIST="/usr/share/wordlists/SecLists/Discovery/DNS/subdomains-top1million-5000.txt:FUZZ"
startbanner(){
    echo    "+=============================+"
    echo
    echo    " $1 ffuzzing with list: "
    echo 
    echo    "         $2       "
    echo
    echo    "+=============================+"
}
ffuzargs=( "$*" )
case $method in 

    directory)
    echo ""
    startbanner "Directory" $DIRECTORY_LIST
    echo "ffuf -w $DIRECTORY_LIST $ffuzargs"
    ffuf -w $DIRECTORY_LIST $ffuzargs
    ;;

    extension)
    startbanner "Extension" $EXTENSION_LIST
    "ffuf -w $EXTENSION_LIST $ffuzargs"
    echo
    ;;

    subdomain)
    startbanner "Subdomain" $SUBDOMAIN_LIST
    "ffuf -w $SUBDOMAIN_LIST $ffuzargs"
    echo
    ;;

esac
