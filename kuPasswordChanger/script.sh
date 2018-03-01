# KU ID/Nummerplade
ACCOUNT=xxx000
NEWPASS=YOUR_NEW_PASSWORD_HERE

# Loop der fylder KU's "tidligere password"-cache op
for i in $(seq 1 24); do
    CURRENT="Password${i}"
    NEXT="Password"$((i + 1))
    echo "Current password: $CURRENT"
    echo "Next password: $NEXT"
    rm -f cookie
    ./login.sh $ACCOUNT $CURRENT
    ./change_password.sh $NEXT
    echo "Sleeping 10 seconds ..."
    sleep 10
done

# Dit nye password, der godt kan vare et gammelt/tidligere benyttet password.
    CURRENT="Password24"
    echo "Current password: $CURRENT"
    echo "Final password: $NEWPASS"
    rm -f cookie
    ./login.sh $ACCOUNT $CURRENT
    ./change_password.sh $NEXT
    rm -f cookie
    rm -f trace_change_password
    rm -f trace_login
    echo "Success, your new password is $NEWPASS"