echo "Sending change password request ..."

curl 'https://idm.ku.dk/idm//user/changePassword.jsp?lang=en&cntry=' \
     -H 'Origin: https://idm.ku.dk' \
     -H 'Accept-Encoding: gzip, deflate' \
     -H 'Accept-Language: en-US,en;q=0.8,da;q=0.6' \
     -H 'Upgrade-Insecure-Requests: 1' \
     -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36' \
     -H 'Content-Type: application/x-www-form-urlencoded' \
     -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' \
     -H 'Cache-Control: max-age=0' \
     -H 'Referer: https://idm.ku.dk/idm//user/changePassword.jsp' \
     -H 'Connection: keep-alive' \
     --data 'id=&command=Save&activeControl=variables.formButton&resourceAccounts.selectAll=true&resourceAccounts.password='"$1"'&resourceAccounts.confirmPassword='"$1"'&variables.formButton=submit' \
     --compressed \
     -b cookie \
     -c cookie \
     -L \
     --trace-ascii trace_change_password \
     -o/dev/null \
     -D- \
     -s
