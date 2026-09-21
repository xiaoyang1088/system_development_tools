# calculator.py 使用说明

## 程序功能

这是一个简单的 Python 加法程序。程序定义 `add` 函数，并调用 `add(2, 3)`，将计算结果打印到终端。

## add 函数

```python
def add(a, b):
    return a + b
```

- 参数：`a` 和 `b` 是参与加法运算的两个值。
- 返回值：`a + b` 的计算结果。对于数字参数，返回两数之和。
- 示例：`add(2, 3)` 返回 `5`。

## 运行命令

需要安装 Python 3。在终端执行：

```bash
cd /home/xy_ai/系统工具开发基础/assignment-4/homework/08
python3 calculator.py
```

如果终端已在该目录，只需执行 `python3 calculator.py`。

## 预期输出

```text
5
```

程序通过 `print(add(2, 3))` 输出上述结果。
