#!/bin/bash

if [[ "$(uname)" == "Linux" ]]; then
    if command -v apt-get &> /dev/null; then
        sudo apt-get install -y nmap masscan zmap docker docker-compose
    elif command -v yum &> /dev/null; then
        sudo yum install -y nmap masscan zmap docker docker-compose
    else
        echo "Не удалось определить пакетный менеджер"
        exit 1
    fi
elif [[ "$(uname)" == "Darwin" ]]; then
    brew install nmap masscan zmap docker docker-compose
else
    echo "Не поддерживаемая операционная система"
    exit 1
fi
