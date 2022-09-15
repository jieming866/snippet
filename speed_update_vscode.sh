#!/bin/bash

location=$(curl --silent --output /dev/null --write-out '%{redirect_url}' 'https://code.visualstudio.com/sha/download?build=stable&os=linux-rpm-x64')
if [ -z "$location" ]
then
    echo 'Fialed to get vscode location!'
    exit
fi

sudo dnf upgrade -y $(echo "$location" | sed 's|https\?://[^/]*/|https://vscode.cdn.azure.cn/|')

