#!/bin/bash

label-studio start ${PROJECT_NAME:-trash_project} --init -b --host 0.0.0.0 --port 8082 \
--username dingbro --password qwer1234 \
--source s3 --source-path trash-image-dataset \
--source-params "{\"use_blob_urls\": true, \"data_key\": \"image\", \"prefix\": \"images\", \"regex\": \"^.*.(jpeg|jpg|png|JPG|PNG)\" }" \
--target s3-completions --target-path trash-image-dataset \
--target-params "{\"prefix\": \"output\", \"create_local_copy\": true}" \
-l config.xml -c config.json \
--sampling uniform \
--log-level ERROR

