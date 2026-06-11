$env:Path = "C:\Program Files\Git\cmd;$env:Path"
cd "C:\obsidian-vault"

# 超时设置：网络慢于 1KB/s 持续 10 秒就放弃
$env:GIT_HTTP_LOW_SPEED_LIMIT = "1000"
$env:GIT_HTTP_LOW_SPEED_TIME = "10"

git pull --rebase --autostash 2>$null
git add -A 2>$null
$result = git commit -m "auto" 2>&1
if ($LASTEXITCODE -eq 0) {
    git push 2>&1
}
