#!/bin/sh

checkEnv(){
    echo "环境不正确!"
    exit
}

create(){
    # echo "创建 App 函数!"

    if [ -z "$1" ]; then
        echo "未输入AppName,使用缺省值 > Pilot"
        AppName="Pilot"
    else
        AppName=$1
    fi

    echo "AppName 为 $AppName !"
    echo "开始克隆项目 $AppName !"
    git clone --recursive  https://github.com/Rdxer/Pilot.git $AppName
    cd $AppName
    ./init.sh
    open App/App.xcworkspace
    echo "结束安装 $AppName !"
}


if [ -z "$1" ]; then
    echo "请输入指令"
    exit
else
    # 检查环境
    # checkEnv

    # echo "包含第一个参数 $1"

    $1 $2
fi

