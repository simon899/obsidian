$git = 'C:\Program Files\Git\cmd\git.exe'
$dir = 'C:\obsidian-vault'
$to = 30000

$p = Start-Process $git 'add','-A' -WorkingDirectory $dir -WindowStyle Hidden -PassThru
$p.WaitForExit($to) | Out-Null
if (!$p.HasExited) { $p.Kill() }

$p = Start-Process $git 'commit','-m','auto' -WorkingDirectory $dir -WindowStyle Hidden -PassThru
$p.WaitForExit($to) | Out-Null
if (!$p.HasExited) { $p.Kill() }

$p = Start-Process $git 'push' -WorkingDirectory $dir -WindowStyle Hidden -PassThru
$p.WaitForExit($to) | Out-Null
if (!$p.HasExited) { $p.Kill() }
