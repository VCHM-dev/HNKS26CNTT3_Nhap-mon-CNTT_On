# Tac gia: "Nguyễn Thái Hoàng"
# Ngay tao: "26/10/2026"

"=== BAO CAO LOI GAMEZONE ===" > "./logs/auto_report.txt"
Get-Content "./logs/game.log" | Select-String "ERROR" >> "./logs/auto_report.txt"
Write-Host "Da tao bao cao:Free fire"
