# 中文日记 Typst 模板

中文日记极简模板，专注于纯中文书写体验，几乎不使用西文符号和阿拉伯数字。

## 编译

在主目录下运行:

```bash
make       # 编译为 pdf
make watch # 实时增量编译
make clean # 清除构建产物
```

## 特点

- **纯中文排版**: 章节和页码均使用大写中文排版
- **为日记优化**: 小章节不记入目录、不显示章节号、每章节自动换页等

## 目录结构

- `main.typ`: 主文件，在此 `#include` 日记的内容
- `src/`: 各个章节

## 预览

[typst.app 链接](https://typst.app/project/r6bKHoYxtSgmq45jNGpdK2)
