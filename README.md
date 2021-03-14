# 简单易懂的小刻也能读懂的扒源教程
谨以此片献给各位热心贡献自己网络的源man，如有其他技巧可提issue
是自己21年开始成为某个组的剪辑man以及经历了虹fes洗礼后总结的东西，有帮上忙就太好了

## 一般路过油管视频
### youtube-dl
- 神器，无需多言，设置比较麻烦，建议自己写个批处理储存常用参数
- 配合ffmpeg可以只截取一小段
- ~~还可以扒会限，具体方法不会描述，自己研究~~
```DOS
youtube-dl -g -f best %link% >> x.txt
set /p videolink=<x.txt
ffmpeg -ss %starttime% -i "%videolink%" -t %duration% -c:v libx264 -s 1920x1080 outputvideo.mp4
```

## 实时录制油管直播
### streamlink
- 设置比较简单
- 录制出来是.ts，体积很小，可以用软件转码
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
### Twitch Leecher
- 自带GUI，和普通的软件操作差不多
