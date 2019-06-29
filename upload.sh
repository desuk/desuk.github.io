#!/bin/bash

set -ue -o pipefail
hugo --cleanDestinationDir
host=107.180.50.234
user=charlied@dukeellington.org.uk
lftp -c "open -u $user $host; mirror -R public ."
