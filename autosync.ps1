$maxSec = 30
$job = Start-Job {
    $env:Path = "C:\Program Files\Git\cmd;$env:Path"
    cd "C:\obsidian-vault"
    git add -A 2>$null
    git commit -m "auto" 2>$null
    git push 2>$null
}
Wait-Job $job -Timeout $maxSec | Out-Null
Stop-Job $job -ErrorAction SilentlyContinue
Remove-Job $job -Force -ErrorAction SilentlyContinue
