核心提示：空白 name 以 SystemExit(2) 结束；只改 cli.py，不改测试，保留正常输出。
测试命令：在 q10 目录运行 python -m pytest -q。
智能体改动：解析参数后增加 strip() 空白检查；测试由 1 failed 变为 1 passed。
人工验证：检查 diff，无无关修改；再次运行测试，结果为 1 passed。
