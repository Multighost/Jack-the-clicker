#! /bin/bash

echo "
█████████████████████████████████████████████████████████████████████████████████████
███▄─▄██▀▄─██─▄▄▄─█▄─█─▄███─▄─▄─█─█─█▄─▄▄─███─▄▄▄─█▄─▄███▄─▄█─▄▄▄─█▄─█─▄█▄─▄▄─█▄─▄▄▀█
█─▄█─███─▀─██─███▀██─▄▀██████─███─▄─██─▄█▀███─███▀██─██▀██─██─███▀██─▄▀███─▄█▀██─▄─▄█
▀▄▄▄▀▀▀▄▄▀▄▄▀▄▄▄▄▄▀▄▄▀▄▄▀▀▀▀▄▄▄▀▀▄▀▄▀▄▄▄▄▄▀▀▀▄▄▄▄▄▀▄▄▄▄▄▀▄▄▄▀▄▄▄▄▄▀▄▄▀▄▄▀▄▄▄▄▄▀▄▄▀▄▄▀"

echo "────────────────████
───────────────█░░███
───────────────█░░████
────────────────███▒██─────████████
──────████████─────█▒█──████▒▒▒▒▒▒████
────███▒▒▒▒▒▒████████████░░████▒▒▒▒▒███
──██▒▒▒▒░▒▒████░░██░░░░██░░░░░█▒▒▒▒▒▒▒███
─██▒▒░░░░▒██░░░░░█▒░░░░░██▒░░░░░░░▒▒▒▒▒▒█
██▒░░░░░▒░░░░░░░░░▒░░░░░░░▒▒░░░░░░░▒▒▒▒▒██
█░░░░░░▒░░░██░░░░░░░░░░░░░██░░░░░░░░▒▒▒▒▒█
█░░░░░░░░█▒▒███░░░░░░░░░█▒▒███░░░░░░░▒▒▒▒█
█░░░░░░░████████░░░░░░░████████░░░░░░▒▒▒▒█
█░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒█
██░░░█░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█░▒▒▒▒█
─█░░░░██░█░░░░░░░░░░░░░░░░░░░░░░░███▒▒▒▒▒█
─█▒▒░░░░█████░░░█░░░░██░░░██░░████░▒▒▒▒▒▒█
─██▒▒░░░░░█████████████████████░░░▒▒▒▒▒▒██
──██▒▒▒▒░░░░░██░░░███░░░██░░░█░░░▒▒▒▒▒▒██
───███▒▒▒░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒█████
─────███▒▒▒▒▒▒░░░░░░░░░░░░░▒▒▒▒▒▒████
────────██████████████████████████
"
echo "[ jacktheclicker v1.0 ] by Mr.Ghost => https://github.com/Multighost"
echo "Welcome $USER.This tool is used for checking clickjack vulnerability"
echo "If the webpage loads inside the box, then it is vulnerable to Clickjacking"

read -p "Enter Website url :" dom
echo "----------------------------------------------------------------------"


maketmp()
{
 mkdir tmphtml
}

html()
{
	echo "<html>
    <head>
        <title>Clickjack test page</title>
        </head>
    
        <header class="w3-center w3-margin-bottom">
        
  <h1><b>Clickjack Test</b></h1>
  <p><b>If the webpage loads inside the box, then it is vulnerable to Clickjacking.</b></p>
  
</header>
    <body>
    <style>
body,h1 {font-family: "Montserrat", sans-serif}
img {margin-bottom: -7px}
.w3-row-padding img {margin-bottom: 12px}
</style>
    
        <iframe src="$dom" width="1000" height="400"></iframe>
        <p>Jack the clicker by Mr.Ghost</>
    </body>
</html>
" > tmphtml/tmp_clickjacking.html
}

openbrowser()
{
  firefox tmphtml/tmp_clickjacking.html
}




RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

error()
{
if [[ -z $dom ]]; then
	echo -e "${RED}Invalid Syntax ${ENDCOLOR}"
	echo -e "${GREEN} Eg :http://www.google.com ${ENDCOLOR}"
else
	
    maketmp
    html
    openbrowser
   echo "Operation Completed...... Riding into the Horizon......"
    
    
fi
}

error


echo "Exiting....."
