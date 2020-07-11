#!/bin/bash

label-studio start ${PROJECT_NAME:-trash_project} --init -b --host 0.0.0.0 --port ${PORT:-8080} --username ${USERNAME:-dingbro} --password ${PASSWORD:-qwer1234!}
