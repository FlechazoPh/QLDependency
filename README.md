![青龙面板](https://user-images.githubusercontent.com/94276146/142231757-380c5221-7569-468e-9f68-2d09afeef538.png)

***

<h1 align="center">【青龙】全依赖环境一键安装脚本 | QLDependency </h1>

<div align="center">

A timed task management panel that supports typescript, javaScript, python3, and shell.（支持python3、javaScript、shell、typescript 的定时任务管理面板）

[![docker docker version][docker-version-image]][docker-version-url]

<!-- [![docker version][docker-version-image]][docker-version-url] [![docker pulls][docker-pulls-image]][docker-pulls-url] [![docker stars][docker-stars-image]][docker-stars-url] [![docker image size][docker-image-size-image]][docker-image-size-url] -->
<!-- [![docker image size][docker-image-size-image]][docker-image-size-url] -->
<!-- [docker-pulls-image]: https://img.shields.io/docker/pulls/whyour/qinglong?style=flat -->
<!-- [docker-pulls-url]: https://hub.docker.com/r/whyour/qinglong -->
[docker-version-image]: https://img.shields.io/docker/v/whyour/qinglong?style=flat
[docker-version-url]: https://hub.docker.com/r/whyour/qinglong/tags?page=1&ordering=last_updated
<!-- [docker-stars-image]: https://img.shields.io/docker/stars/whyour/qinglong?style=flat -->
<!-- [docker-stars-url]: https://hub.docker.com/r/whyour/qinglong -->
![GitHub Repo stars](https://img.shields.io/github/stars/FlechazoPh/QLDependency)
![GitHub forks](https://img.shields.io/github/forks/FlechazoPh/QLDependency)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/FlechazoPh/QLDependency/Release)
[![docker-image-size-image]][docker-image-size-url]
  

![GitHub Repo stars](https://img.shields.io/github/stars/whyour/qinglong)

[docker-image-size-image]: https://img.shields.io/docker/image-size/whyour/qinglong?style=flat
[docker-image-size-url]: https://hub.docker.com/r/whyour/qinglong

<br>
<h2 <b>本仓库源地址【 https://github.com/FlechazoPh/QLDependency 】</b> </h2><br>


### 🚀自用机场及Netflix流媒体合租平台推荐：（2021.08.17更新）
* [🏆 比特云-Bitcloud](https://bit.ly/33yDAQM)
* [🚖奈飞小铺-流媒体合租 Netflix/Disney+/HBO+](https://bit.ly/netflix-ihezu)




<b>【Gitee 仓库地址(方便国内小伙伴访问)】https://gitee.com/exting/QLDependency </b> <br>

【GitBook 文档仓库地址】https://doc.flechazo.ml/青龙/2021-11-17-青龙依赖一键安装脚本.html <br>

【Telegram 群组】:airplane: https://t.me/github_chats <br>


欢迎前往原作者仓库右上角点 <b>⭐ Star 收藏和 follow</b>
</div>

### [点这里请我吃个面包~ ](https://dun.mianbaoduo.com/@Flechazo) <br>
<a href="https://dun.mianbaoduo.com/@Flechazo" target="_blank"><img src="https://img.niucodata.com/dundunfan-bt.png"></a>

# QLDependency
# 青龙全依赖一键安装脚本 部署文档
文档地址： [GitBook 文档](https://doc.flechazo.ml/青龙/2021-11-17-青龙依赖一键安装脚本.html)

## 特别声明

- 本项目内所有资源文件，禁止任何公众号、自媒体进行任何形式的转载、发布。

- 本人对任何脚本问题概不负责，包括但不限于由任何脚本错误导致的任何损失或损害。

- 间接使用脚本的任何用户，包括但不限于建立VPS或在某些行为违反国家/地区法律或相关法规的情况下进行传播, 本人对于由此引起的任何隐私泄漏或其他后果概不负责。

- 请勿将本仓库的任何内容用于商业或非法目的，否则后果自负。

- 如果任何单位或个人认为该项目的脚本可能涉嫌侵犯其权利，则应及时通知并提供身份证明，所有权证明，我们将在收到认证文件后删除相关脚本。

- 任何以任何方式查看此项目的人或直接或间接使用该项目的任何脚本的使用者都应仔细阅读此声明。本人保留随时更改或补充此免责声明的权利。一旦使用并复制了任何相关脚本或Script项目的规则，则视为您已接受此免责声明。

**您必须在下载后的24小时内从计算机或手机中完全删除以上内容**

> ***您使用或者复制了本仓库且本人制作的任何脚本，则视为 `已接受` 此声明，请仔细阅读***


***
***

新版本的青龙(2.10.2+ )，在运行脚本的时候，经常出现

```bash

“ Cannot find module 'xxxx' ” 

or

“ 'xxxx' module not found ” 

```

的报错问题 ，原因就是缺少 xxxx 模块，mudole的名字就是报错的 xxxx。

为解决新版本依赖问题，可以在安装时直接一键部署全部所需的依赖，以免后患：




一键安装单独青龙的依赖
国内版：


```bash

docker exec -it qinglong bash -c "$(curl -fsSL https://ghproxy.com/https://raw.githubusercontent.com/FlechazoPh/QLDependency/main/Shell/QLOneKeyDependency.sh | sh)"

```





国外版：

```bash

docker exec -it qinglong bash -c "$(curl -fsSL https://raw.githubusercontent.com/FlechazoPh/QLDependency/main/Shell/QLOneKeyDependency.sh | sh)"

```




## 具体执行方法：

> 安装拉取青龙镜像的就不说了，教程都有 `` docker pull whyour/qinglong:latest ``

0. 点击本页面 右上方的 **Star**

1. SSH 进入服务器（或群辉，或软路由等终端环境），输入 `` docker ps ``，查看 青龙 Docker 是否正常运行，记下青龙 Docker的容器名字 ，然后进入下一步。

![Docker](https://user-images.githubusercontent.com/94276146/142231910-c2d71ab6-869c-4153-b9bf-29bcd40ca2a4.png)


2. 输入一键安装命令，如果你的青龙容器不叫 qinglong，需要替换为相应的容器名字（国外鸡，可以使用上面的国外脚本，速度比较快）： 
```bash

docker exec -it qinglong bash -c "$(curl -fsSL https://ghproxy.com/https://raw.githubusercontent.com/FlechazoPh/QLDependency/main/Shell/QLOneKeyDependency.sh | sh)"

```
3. 查看输出日志：
![SSH](https://user-images.githubusercontent.com/94276146/142231876-b842d1a5-bdbb-45e3-9fa5-38ba956f1dbf.png)


4. 等进度条走完，等待的时候因机器性能而异，性能差有的时间可能会非常长...

![npm](https://user-images.githubusercontent.com/94276146/142231949-56302ec2-f169-44a0-92d3-e0b778afbec3.png)



5. 最后输出，就完成了，重启下青龙 Docker ：

```bash

Docker restart qinglong

```



6. 依赖安装完毕...

End

不建议的话顺手给个 **★ Star** (页面顶部右上方), **方便以后收到脚本更新~**

## 附：
有新的需要的依赖，请测试完成后提交pull request，等待审核通过合并到项目中


## 请作者喝杯咖啡 (进微信交流群)～ ☕

<!-- <table style="table-layout: fixed;" width=100% > 
<tr> 
 <td> <p align="center">支付宝</p> <img width="300" height="300" src="https://cdn.jsdelivr.net/gh/FlechazoPh/QLDependency@main/assets/3F596EC7-92D9-49DA-9CA3-78D2DE07838E.jpeg" /> </td> 
 <td> <p align="center">微信</p> <img width="300" height="300" src="https://cdn.jsdelivr.net/gh/FlechazoPh/QLDependency@main/assets/4B6DD0C1-8ECE-4C09-A0F7-3B6A36F399E7.jpeg" /></td> 
 <td> <p align="center">微信交流群(活码，需微信扫描两次)</p> <img width="300" height="300" src="https://cdn.jsdelivr.net/gh/FlechazoPh/QLDependency@main/assets/wechat_group.png" /></td> 
 <td> <p align="center">Telegram 群组(https://t.me/github_chats)</p> <img width="300" height="300" src="https://cdn.jsdelivr.net/gh/FlechazoPh/QLDependency@main/assets/tggroup.png" /></td> 
   
  <td> <p align="center">加不了群请加微信好友(备注 Github)</p> <img width="300" height="300" src="https://cdn.jsdelivr.net/gh/FlechazoPh/QLDependency@main/assets/20211127211122.jpg" /></td> 
</tr> 
</table> -->
|    支付宝赞助码     |  微信赞助码   |     微信交流群(活码，需微信扫描两次)     | Telegram 群组(https://t.me/github_chats) | 加不了群请加微信好友(备注 Github) |
| ----------- | ----------- |  ----------- | ----------- | ----------- |
| ![SSH](https://cdn.jsdelivr.net/gh/FlechazoPh/QLDependency@main/assets/3F596EC7-92D9-49DA-9CA3-78D2DE07838E.jpeg) | ![SSH](https://cdn.jsdelivr.net/gh/FlechazoPh/QLDependency@main/assets/4B6DD0C1-8ECE-4C09-A0F7-3B6A36F399E7.jpeg)  | ![SSH](https://cdn.jsdelivr.net/gh/FlechazoPh/QLDependency@main/assets/cli_wechat.png) | ![SSH](https://cdn.jsdelivr.net/gh/FlechazoPh/QLDependency@main/assets/tggroup.png) | ![SSH](https://cdn.jsdelivr.net/gh/FlechazoPh/QLDependency@main/assets/20211127211122.jpg) | 


## 赞助列表（时间倒叙排序） ⬇

|    昵称     |  赞助金额   |     留言     |
| ----------- | ----------- |  ----------- |
| P * n       | 10.0 ￥     |   coffee     |
| * 宁        | 0.01 ￥     |              |
| * 人        | 5.00 ￥     | 谢谢~         |
| * 晨        | 18.00 ￥    | 谢谢大佬！！   |
| Alan        | 2.50 ￥     |              |


## ★ Star 趋势 /Stargazers Over Time

[![Stargazers over time](https://starchart.cc/FlechazoPh/QLDependency.svg)](https://starchart.cc/FlechazoPh/QLDependency)

## 鸣谢

* [qinglong](https://github.com/whyour/qinglong)

* [crontab-ui](https://github.com/alseambusher/crontab-ui)




