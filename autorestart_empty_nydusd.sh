# auto restart nydusd-ptfs script
until sudo /home/zhaosheng.ste/image-service/target-virtiofs/debug/nydusd --sock /tmp/vhost-user-fs.sock --id debug-2 --apisock /tmp/api.sock --reconnect
do
	echo "'nydusd' crashed with exit code $?. Respawning.." >&2
	sleep 1
done

echo "'virtiofsd' crashed with exit code $?. " >&2
