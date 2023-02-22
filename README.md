# 简单易懂的小刻也能读懂的扒源教程
谨以此献给各位热心贡献自己网络的源man，如有其他技巧可提issue  
是自己21年开始成为某个组的剪辑man以及经历了虹fes洗礼后总结的东西，有帮上忙就太好了

## 一般路过油管视频

### Youtube-dl已寄，yt-dlp当道
- 油管为了卖会员不择手段……
- 神器，无需多言，设置比较麻烦，建议自己写个批处理储存常用参数
- 以下代码仅供参考（下载封面以及最好格式的音频+视频并合并）
```DOS
@echo off
set /p url="Please enter the video link"
yt-dlp -f "bv+ba/b" --write-thumbnail --convert-thumbnails png %url%
pause
```
- 下载264格式
```DOS
yt-dlp -f "(bv*[vcodec~='^((he|a)vc|h26[45])']+ba) / (bv*+ba/b)" %url%
```
- 需要剪取的话依旧可以使用ffmpeg或者losslesscut

## 实时录制油管直播
### streamlink
- 设置比较简单
- 录制出来是.ts，体积很小，可以用软件转码
- 以下代码仅供参考，自行替换%%的内容
```DOS
streamlink "%link%" best --output %videoname%.ts
```

## 推生（Twicasting）
### 实时录制live
#### stream recorder(chrome插件)
- 十分简单，即按即用
### 扒档
#### minyami(chrome插件)
- 某次推生更新后隐藏了m3u8
- minyami安装后，按F12会看到它抓出来的m3u8源地址
- 可以用youtube-dl或者ffmpeg配合下载

## NicoNico生放送
### minyami
- 将其输出的命令行复制到cmd即可
- 小技巧：在你指定的文件目录的地址栏，全选，替换为cmd，回车，会在你指定的目录中启动cmd
- ~~就不用一点点cd了~~

## Twitch
### 实时直播录制，用于对付不留档
- yt-dlp可用于m3u8的下载（可惜了youtube-dl）
- 没试过

### 扒档 
#### Twitch Leecher
- 自带GUI，和普通的软件操作差不多
