$git = 'C:\Program Files\Git\cmd\git.exe'
$dir = 'C:\obsidian-vault'
$to = 30000
$p = Start-Process $git 'pull','--rebase','--autostash' -WorkingDirectory $dir -WindowStyle Hidden -PassThru
$p.WaitForExit($to) | Out-Null
if (!$p.HasExited) { $p.Kill() }
