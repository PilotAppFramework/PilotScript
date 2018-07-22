#!/bin/sh

create(){
    # echo "创建 App 函数!"

    if [ -z "$1" ]; then
        echo "未输入AppName,使用缺省值 > Pilot"
        AppName="Pilot"
    else
        AppName=$1
    fi

    echo "AppName 为 $AppName !"

    
}


if [ -z "$1" ]; then
    echo "请输入指令"
    exit
else
    # echo "包含第一个参数 $1"

    $1 $2
fi

