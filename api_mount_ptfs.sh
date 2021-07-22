curl -v --unix-socket /tmp/api.sock \
	        -X POST "http://localhost/api/v1/mount?mountpoint=/foo1" -H "accept: */*" \
		-H "Content-Type: application/json" \
	        -d '{
	                "source":"/home/zhaosheng.ste/shared-dir",
	                "fs_type":"passthrough_fs",
	                "config":""
		}'
