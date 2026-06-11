$env:Path = "C:\Program Files\Git\cmd;$env:Path"
cd "C:\obsidian-vault"

# 先拉取远程更新，再提交本地更改，最后推送
git pull --rebase --autostash 2>&1
$result = git add -A 2>&1
$result = git commit -m "auto" 2>&1
if ($LASTEXITCODE -eq 0) {
    git push 2>&1
}
