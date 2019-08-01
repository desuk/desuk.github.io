#!/bin/bash

set -ue -o pipefail
hugo --cleanDestinationDir
host=107.180.50.234
user=charlied@dukeellington.org.uk

# TODO: This never removes anything :( Should fix this but leave TDWAW alone.
lftp -c "open -u $user $host; mirror -R public ."
