#!/bin/bash

set -ue -o pipefail

hugo --baseURL=https://filedn.com/lzfSuhW62TUHFogP938o5e8/desuk_preview/ --destination=desuk_preview

rsync -rtv --delete desuk_preview/ "/home/charlie/pCloudDrive/Public Folder/desuk_preview"
