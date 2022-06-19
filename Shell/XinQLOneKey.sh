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
node -v

echo
"当前npm版本(如果没有npm，请自行安装): "
npm -v

npm config set registry https://registry.npmmirror.com
cd /ql
pnpm add -g pnpm

pnpm install -g

npm install -g npm png-js date-fns axios crypto-js ts-md5 tslib @types/node requests tough-cookie jsdom download tunnel fs ws form-data

pnpm install -g js-base64 qrcode-terminal silly-datetime

pip3 install requests

cd /ql/data/scripts/ && apk add --no-cache build-base g++ cairo-dev pango-dev giflib-dev && npm i && npm i -S ts-node typescript @types/node date-fns axios png-js canvas --build-from-source
cd /ql
apk add --no-cache build-base g++ cairo-dev pango-dev giflib-dev && cd /ql/data/scripts/ && npm install canvas --build-from-source
cd /ql
apk add python3 zlib-dev gcc jpeg-dev python3-dev musl-dev freetype-dev

echo
TIME g "依赖安装完毕...建议重启 Docker "

echo
TIME g "有任何问题，请在此仓库提交Issue： https://github.com/FlechazoPh/QLDependency"
echo
exit 0
