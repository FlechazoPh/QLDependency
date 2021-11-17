![青龙面板](https://user-images.githubusercontent.com/94276146/142231757-380c5221-7569-468e-9f68-2d09afeef538.png)

 <h1 align="center">【青龙】全依赖环境一键安装脚本</h1>

<div align="center">
[![docker version][docker-version-image]][docker-version-url] [![docker pulls][docker-pulls-image]][docker-pulls-url] [![docker stars][docker-stars-image]][docker-stars-url] [![docker image size][docker-image-size-image]][docker-image-size-url]

[docker-pulls-image]: https://img.shields.io/docker/pulls/whyour/qinglong?style=flat
[docker-pulls-url]: https://hub.docker.com/r/whyour/qinglong
[docker-version-image]: https://img.shields.io/docker/v/whyour/qinglong?style=flat
[docker-version-url]: https://hub.docker.com/r/whyour/qinglong/tags?page=1&ordering=last_updated
[docker-stars-image]: https://img.shields.io/docker/stars/whyour/qinglong?style=flat
[docker-stars-url]: https://hub.docker.com/r/whyour/qinglong
[docker-image-size-image]: https://img.shields.io/docker/image-size/whyour/qinglong?style=flat
[docker-image-size-url]: https://hub.docker.com/r/whyour/qinglong

</div>

# QLDependency
# 青龙全依赖一键安装脚本


新版本的青龙(2.10.2+ )，在运行脚本的时候，经常出现

```bash

“ Cannot find module './xxxx' ” 

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

> 安装拉取青龙镜像的就不说了，教程都有 docker pull whyour/qinglong:latest

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

不建议的话顺手给个 **Star**, **方便以后收到脚本更新~**
