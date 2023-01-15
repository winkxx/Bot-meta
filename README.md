# Bot-meta
~测试~
## heroku部署链接:
https://dashboard.heroku.com/new?template=https://github.com/winkxx/Bot-meta
## 教程(bushi)
> 1. 唯一难点可能就是申请TG的APP id和hash 这两项在[这里](https://my.telegram.org)中注册应用后得到
> 2. Telegram_user_id    使用者的TG id，可在@userinfobot处获得，设置为群组ID则该群组所有人员可用，需要设置Bot的群组权限
> 3. Rclone_share 可不填，True 为上传网盘后返回分享链接(onedrive)，False 为关闭该功能，不设置该变量则默认关闭
> 4. Error_user_info 可不填，可设置非允许使用者发送消息时的提示，不设置该变量则使用默认语句
> 5. 遗留问题:1.网页密码问题 2.rclone.conf问题 3.jsonrpc问题
> 6. 改进:1.换成P大的aira2 2.网页能跑 3.jsonrpc能跑
> 7. 继续观望，应该还有问题
---
通过在 @BotFather 设置命令（旧版本的源码，对应命令不一定能用）
```
start - 查看Bot状态
help - 获取Bot的使用帮助
pixivauthor - 对pixiv画师作品操作
pixivtopall - 对pixiv排行榜进行操作
pixivtopillust - 对插画排行榜进行操作
pixivpid - 发送pixiv该id的图片
magfile - 推送种子文件至aria2下载后上传至网盘
mirror - 推送直链至aria2下载上传至网盘
mirrortg - 推送直链至aria2下载发送到TG
magnet - 推送磁力链接至aria2下载后上传至网盘
downtgfile - 发送TG文件并上传至网盘
rclonecopy - 用rclone在网盘间传输
rclonelsd - 用rclone显示网盘文件夹
rclone - 用rclone显示文件夹内详细信息
rclonecopyurl - 用rclonecopyurl的方式直接上传直链文件
getfileid - 发送文件获取fileid
getfile - 发送fileid来获取文件
video - 发送视频链接
neteaseid - 通过id获取歌曲信息
searchsong - 搜索网易云音乐歌曲
playlist - 获取歌单信息
odshare - 下载公开的od、sp分享链接文件并上传网盘
odprivate - 下载域内的od、sp分享链接上传到网盘
nhentai - 下载nhentai中对应id的本子
ehentai - 下载nhentai中对应id的本子
picacgsearch - 在哔咔中搜索本子，支持ZIP上传到网盘和发送到TG
ehentaisearch - 在ehentai中搜索本子，支持ZIP上传到网盘和发送到TG、发送网页
nhentaisearch - 在nhentai中搜索本子，支持ZIP上传到网盘和发送到TG、发送网页
```
