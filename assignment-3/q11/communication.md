# Issue

环境：Windows。

复现命令：sdt-greet --name "   "

期望结果：拒绝仅含空白字符的 name，并以非零状态退出。

实际结果：输出 Hello,    !，并以 0 状态退出。

未知信息：是否仅在 Windows 下出现，待确认。

# Commit Message

fix: reject blank name input

Reject whitespace-only names and exit with SystemExit(2).

# Review

Blocking: 当前实现接受空白 name 并成功退出，会导致无效输入被当作有效输入。建议使用 strip() 检查，并在为空时退出。

Suggestion: 增加自动化测试，验证空白输入触发 SystemExit(2)。
