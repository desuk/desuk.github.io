#!/usr/bin/env bash

set -ue -o pipefail
rm -rf build
hugo # --cleanDestinationDir
host=dukeellington.org.uk
user=charlied@dukeellington.org.uk

# TODO: This never removes anything :( Should fix this but leave TDWAW alone.
lftp -c "open $host; mirror -R build ."
