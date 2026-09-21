# Bug Report

## 环境
- 系统：WSL2 Ubuntu
- Python：Python 3.12.4

## 运行命令
`python3 list_bug.py`

## 期望结果
程序正常输出列表中的数字，或者在下标无效时给出提示并正常结束。

## 实际结果
程序异常结束，终端显示 `IndexError: list index out of range`。

## 错误类型
`IndexError`

## 复现步骤
1. 进入 `assignment-4/homework/09` 目录。
2. 确认目录中存在 `list_bug.py`。
3. 运行 `python3 list_bug.py`。
4. 程序在访问 `numbers[5]` 时出现 `IndexError`。
