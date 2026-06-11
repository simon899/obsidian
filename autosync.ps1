$env:Path = "C:\Program Files\Git\bin;$env:Path"
cd "C:\obsidian-vault"

# Stage all changes, commit if any, push
$result = git add -A 2>&1
$result = git commit -m "auto sync $(Get-Date -Format 'HH:mm')" 2>&1
if ($LASTEXITCODE -eq 0) {
    git push 2>&1
}
