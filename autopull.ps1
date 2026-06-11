$maxSec = 30
$job = Start-Job {
    $env:Path = "C:\Program Files\Git\cmd;$env:Path"
    cd "C:\obsidian-vault"
    git pull --rebase --autostash 2>$null
}
Wait-Job $job -Timeout $maxSec | Out-Null
Stop-Job $job -ErrorAction SilentlyContinue
Remove-Job $job -Force -ErrorAction SilentlyContinue
