#!/bin/bash

# コマンドライン引数からネームスペースを設定
NAMESPACE=${1:-"default"}

# ANSI カラーコード
BLUE='\033[1;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

# 利用可能なすべてのリソースタイプを取得
kubectl api-resources --verbs=list --namespaced=true --no-headers | awk '{print $1}' |
# parallel で各リソースタイプに対して kubectl get を実行
parallel -j 8 --keep-order '
    echo -e "***************************************************"
    echo -e "** Fetching {} in namespace '$NAMESPACE'..."
    echo -e "***************************************************"
    result=$(kubectl get {} -n '$NAMESPACE' 2>&1)
    if [[ "$result" == *"No resources found"* ]]; then
        echo -e "'$BLUE'$result'$NC'"
    else
        echo -e "'$YELLOW'$result'$NC'"
    fi
    echo -e "\n"
'
