$env:Path = "C:\Program Files\Git\cmd;$env:Path"
cd "C:\obsidian-vault"
git -c http.timeout=15 pull --rebase --autostash 2>$null
