curl --unix-socket /tmp/api.sock \
        -X POST "http://localhost/api/v1/mount?mountpoint=/bar1" -H "accept: */*" \
        -H "Content-Type: application/json" \
        -d '{
                "source":"/home/zhaosheng.ste/nydus-static/tmp/bootstraps/4-sha256:efe790ac151b1ea4c0b89f012dd797d5c4206c0a47b01f4da52a9c60511d3fb7",
                "fs_type":"rafs",
                "config":"{\"device\":{\"backend\":{\"type\":\"localfs\",\"config\":{\"dir\":\"blobs\"}},\"cache\":{\"type\":\"blobcache\",\"config\":{\"work_dir\":\"cache\"}}},\"mode\":\"direct\",\"digest_validate\":true}"
        }'