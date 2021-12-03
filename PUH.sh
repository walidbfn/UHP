



#################################################################
#                                                               #
#                                                               #
#                     ░█▄▒▄█▒█▀▄░░  █▄▀                         #
#                     ░█▒▀▒█░█▀▄░▄  █▒█                         #
#                                                               #
#              Youtube  : https://bit.ly/3dfYKF2                #
#              Facebook : https://bit.ly/3rxQGrz                #
#              Github   : https://bit.ly/32S4vqt                #
#                                                               #
#################################################################

###URL check###

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] idiot Invalid URL. use http or https.\e[0m"
            exit 1
        fi
    fi
}

###banner###

echo -e "\e[1;31m                         ██╗   ██╗██╗  ██╗██████╗                           \e[0m"
echo -e "\e[1;31m                         ██║   ██║██║  ██║██╔══██╗                          \e[0m"
echo -e "\e[1;31m                         ██║   ██║███████║██████╔╝                          \e[0m"
echo -e "\e[1;31m                         ██║   ██║██╔══██║██╔═══╝                           \e[0m"
echo -e "\e[1;31m                         ╚██████╔╝██║  ██║██║                               \e[0m"
echo -e "\e[1;31m                          ╚═════╝ ╚═╝  ╚═╝╚═╝                                \e[0m"
echo -e "\e[1;31m  _  _ ____ _      _  _ _ ___  ____ ____   ___  _  _ _ ____ _  _ _ _  _ ____  \e[0m"
echo -e "\e[1;31m  |  | |__/ |      |__| | |  \ |___ |__/   |__] |__| | [__  |__| | |\ | | __  \e[0m"
echo -e "\e[1;31m  |__| |  \ |___   |  | | |__/ |___ |  \   |    |  | | ___] |  | | | \| |__]  \e[0m"
echo -e "\e[1;31m                                                                       v0.1b \e[0m"
echo -e "\e[1;31m                      Url Hider Phishing MADE By Mr.k                         \e[0m"
echo -e "\e[1;31m                                                                             \e[0m"
echo -e "\e[1;31m                   https://haaya.000webhostapp.com/Home                      \e[0m"
echo -e "\e[1;31m\e[0m"
echo -e "\e[1;31m\e[0m"
echo -n "Enter Phishing URL here (with http or https): 
>>>"
read phish
url_checker $phish
sleep 1
echo "Processing and Modifing Phishing URL"
echo ""
short=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${phish})
shorter=${short#https://}
echo -e "\n\e[1;31m VvV Hiding Domain VvV\e[0m"
echo 'Domain to mask the Phishing URL (with http or https), ex: https://google.com, http
://pornhub.com :'
echo -en "\e[31m>>\e[0m "
read mask
url_checker $mask
echo -e '\nType social engineering words:(like free-money, best-pubg-tricks)'
echo -e "\e[31mDon't use space just use '-' between social engineering words\e[0m"
echo -en "\e[32m=>\e[0m "
read words
echo -e "\nGenerating hidden Phish Link...\n"
final=$mask-$words@$shorter
echo -e "Here is the hidden Phish URL:\e[32m ${final} \e[0m\n"
