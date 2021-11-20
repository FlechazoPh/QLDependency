#!/usr/bin/env bash
#

# 青龙一键安装脚本
# GitHub仓库： https://github.com/FlechazoPh/QLDependency

# 安装报错，请提交Issue

# 有其他需要的依赖，欢迎到源仓库提交Pull Request

TIME() {
[[ -z "$1" ]] && {
	echo -ne " "
} || {
     case $1 in
	r) export Color="\e[31;1m";;
	g) export Color="\e[32;1m";;
	b) export Color="\e[34;1m";;
	y) export Color="\e[33;1m";;
	z) export Color="\e[35;1m";;
	l) export Color="\e[36;1m";;
      esac
	[[ $# -lt 2 ]] && echo -e "\e[36m\e[0m ${1}" || {
		echo -e "\e[36m\e[0m ${Color}${2}\e[0m"
	 }
      }
}
echo
echo
echo
TIME l "安装依赖..."
echo
TIME y "安装依赖需要时间，请耐心等待!"
echo
sleep 3
echo
echo

echo
"当前node版本(如果没有node，请自行安装): "
npm -v

echo
"当前npm版本(如果没有npm，请自行安装): "
npm -v

npm config set registry https://registry.npm.taobao.org
cd /ql
pnpm add -g pnpm

pnpm install -g

npm install -g npm

npm install -g png-js

npm install -g date-fns

npm install -g axios

npm install -g crypto-js

npm install -g ts-md5

npm install -g tslib

npm install -g @types/node

npm install -g requests

npm install -g tough-cookie

npm install -g jsdom

npm install -g download

npm install -g tunnel

npm install -g fs

npm install -g ws

npm install -g form-data

pnpm install -g js-base64

pnpm install -g qrcode-terminal

pnpm install -g silly-datetime

pip3 install requests

cd /ql/scripts/ && apk add --no-cache build-base g++ cairo-dev pango-dev giflib-dev && npm i && npm i -S ts-node typescript @types/node date-fns axios png-js canvas --build-from-source
cd /ql
apk add --no-cache build-base g++ cairo-dev pango-dev giflib-dev && cd scripts && npm install canvas --build-from-source
cd /ql
apk add python3 zlib-dev gcc jpeg-dev python3-dev musl-dev freetype-dev

echo
TIME g "依赖安装完毕...建议重启 Docker "

echo
TIME g "有任何问题，请在此仓库提交Issue： https://github.com/FlechazoPh/QLDependency"
echo
exit 0
