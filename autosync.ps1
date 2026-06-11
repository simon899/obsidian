$env:Path = "C:\Program Files\Git\cmd;$env:Path"
cd "C:\obsidian-vault"

# 每步都设 15 秒超时，防止卡死
$timeout = "-c http.timeout=15"
git $timeout pull --rebase --autostash 2>$null
git add -A 2>$null
git $timeout commit -m "auto" 2>$null
git $timeout push 2>$null
