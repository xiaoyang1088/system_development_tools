# 关于删除 q03/.git 目录的说明

q03 是 git 分支操作的练习作业，本目录下原本有一个本地 git 仓库（`.git` 元数据目录），已**有意删除、未上传至仓库**。

## 为什么删除 .git

1. **嵌套仓库问题**：若保留 `.git` 目录，外层仓库会把 `q03` 视为嵌套仓库（embedded repository），GitHub 上 q03 只会显示一个不可访问的空文件夹，`config.txt` 也无法正常展示；
2. **非交付内容**：分支练习的提交历史属于本地练习过程，不是作业成果（作业文件只有 `q03/config.txt`）。

## 练习记录（删除前留档）

```
*   4828a1a (HEAD -> main) 解决冲突
|\
| * ca23db2 (feature-b) feature-b: mode=fast
* | f3916ec (feature-a) feature-a: mode=safe
|/
* 3a0187b init: mode=normal
```

分支：main、feature-a、feature-b

## 练习要点回顾

- 分支创建与切换：`git branch` / `git checkout -b` / `git switch`
- 合并与冲突解决：`git merge`，冲突时手动编辑冲突标记 `<<<<<<<`、`=======`、`>>>>>>>` 后重新提交
- 提交记录查看：`git log --all --graph --oneline --decorate`
