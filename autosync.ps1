$env:Path = "C:\Program Files\Git\cmd;$env:Path"
cd "C:\obsidian-vault"
$result = git add -A 2>&1
$result = git commit -m "auto" 2>&1
if ($LASTEXITCODE -eq 0) {
    git push 2>&1
}
