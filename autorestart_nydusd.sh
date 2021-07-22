# auto restart nydusd-ptfs script
until sudo /home/zhaosheng.ste/image-service/target-virtiofs/debug/nydusd --sock /tmp/vhost-user-fs.sock --shared-dir /home/zhaosheng.ste/shared-dir --id debug-2 --reconnect
do
	echo "'nydusd' crashed with exit code $?. Respawning.." >&2
	sleep 1
done

echo "'virtiofsd' crashed with exit code $?. " >&2
