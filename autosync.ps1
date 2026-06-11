$env:Path = "C:\Program Files\Git\cmd;$env:Path"
cd "C:\obsidian-vault"
git -c http.timeout=15 add -A 2>$null
git -c http.timeout=15 commit -m "auto" 2>$null
git -c http.timeout=15 push 2>$null
