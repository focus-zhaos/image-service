# periodic kill nydusd ptfs script
while true
do
	    if [ `pidof nydusd | wc -w` -gt 0 ]
	    then
		    pidmes="$(pidof nydusd)"
		    echo "Kill Nydusd [$pidmes]"
		    sudo kill -9 `pidof nydusd`
	    fi
	    sleep 10
done
