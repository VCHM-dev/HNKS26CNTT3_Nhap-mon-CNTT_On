# BÀI LÀM – THI THỬ HACKATHON 02 (GAMEZONE)

- **Họ tên:Nguyễn Thái Hoàng** 
- **Lớp:CNTT3** 
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):Windows** 

## 4.2. Thao tác CLI

### Các lệnh đã chạy

```shell
PS D:\starter-kit\gamezone-website> pwd
PS D:\starter-kit\gamezone-website> ls -Recurse -Force
PS D:\starter-kit\gamezone-website> mv .\cap_nhat.txt .\docs; mv .\logo_gamezone.png .\media\
PS D:\starter-kit\gamezone-website> cp .\media\logo_gamezone.png .\backup\
PS D:\starter-kit\gamezone-website> rm .\temp_207.tmp
PS D:\starter-kit\gamezone-website> cd .\logs\
PS D:\starter-kit\gamezone-website\logs> ls -Force
PS D:\starter-kit\gamezone-website\logs> cd ..


```

### Kết quả liệt kê toàn bộ dự án

```text
PS D:\starter-kit\gamezone-website> ls -Recurse -Force


    Directory: D:\starter-kit\gamezone-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/26/2026   1:39 PM                backup
d-----        10/26/2026   1:32 PM                data
d-----        10/26/2026   1:38 PM                docs
d-----        10/26/2026   1:32 PM                logs
d-----        10/26/2026   1:38 PM                media
-a----        10/26/2026   1:26 PM             70 .env
-a----        10/26/2026   1:26 PM           1437 bai_lam.md


    Directory: D:\starter-kit\gamezone-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/26/2026   1:26 PM           8542 logo_gamezone.png


    Directory: D:\starter-kit\gamezone-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/26/2026   1:26 PM           5814 giao_dich_thang_11.xlsx


    Directory: D:\starter-kit\gamezone-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/26/2026   1:26 PM             61 cap_nhat.txt


    Directory: D:\starter-kit\gamezone-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/26/2026   1:26 PM            986 game.log


    Directory: D:\starter-kit\gamezone-website\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/26/2026   1:26 PM           8542 logo_gamezone.png


```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
PS D:\starter-kit\gamezone-website> Get-Content .\logs\game.log | Select-String "ERROR" >> .\logs\daily_report.txt
PS D:\starter-kit\gamezone-website> Get-Content .\logs\daily_report.txt -Head 2

```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2025-11-05 08:03:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:09:15 [ERROR] Mat ket noi may chu game

```

## 4.4. README.md

> Chấm trực tiếp trên `README.md` ở gốc dự án.

- [x] Heading 1
- [x] Mô tả in đậm + in nghiêng
- [x] Bảng `Thư mục | Nội dung` (≥3 dòng)
- [x] Code block lệnh liệt kê
- [x] Task list (≥2 việc, ≥1 đã xong)
- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report

### Lệnh chạy

```shell
PS D:\starter-kit\gamezone-website> .\auto_report.ps1

```

### Nội dung file logs/auto_report.txt

```text
=== BAO CAO LOI GAMEZONE ===

2025-11-05 08:03:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:09:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:12:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:39:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:42:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:51:15 [ERROR] Loi luu tien trinh choi

```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
PS D:\starter-kit\gamezone-website> (Get-Content ".\logs\auto_report.txt" | Select-String "ERROR").Count

```

### Kết quả đếm

```text
6

```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
PS D:\starter-kit\gamezone-website> history

  Id CommandLine
  -- -----------
   1 cd D:
   2 cd '.\starter-kit\GameZone Website FINAL\'
   3 cd ..
   4 mv '.\GameZone Website FINAL\' gamezone-website
   5 cd .\gamezone-website\
   6 mkdir docs,media,data,logs,backup
   7 mv '.\Logo GameZone.PNG' logo_gamezone.png; mv '.\Cap Nhat.txt' cap_nhat.txt; mv '.\Giao Dich Thang 11.xlsx' gi...
   8 mv .\Game.log game.log
   9 mv .\game.log .\data\
  10 cp ..\bai_lam.md
  11 ls -Force
  12 ls -r -f
  13 ls -Recurse -Force
  14 pwd
  15 ls -Recurse -Force
  16 mv .\cap_nhat.txt .\docs; mv .\logo_gamezone.png .\media\
  17 cp .\media\logo_gamezone.png .\backup\
  18 rm .\temp_207.tmp
  19 cd .\logs\
  20 ls -Force
  21 cd ..
  22 ls -Recurse -Force
  23 Get-Content .\logs\game.log | Select-String "ERROR" >> .\logs\daily_report.txt
  24 Get-Content .\logs\daily_report.txt -Head 2
  25 ni README.md
  26 Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
  27 .\auto_report.ps1
  28 .\auto_report.ps1
  29 (Get-Content ".\logs\auto_report.txt" | Select-String "ERROR").Count

```

### Nội dung file logs/tong_hop.txt

```text
=== TONG HOP LOG GAMEZONE ===

2025-11-05 08:54:15 [WARNING] May chu qua tai CPU 90%



2025-11-05 08:03:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:09:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:12:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:39:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:42:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:51:15 [ERROR] Loi luu tien trinh choi

```

## 4.8. Excel

> Chấm trực tiếp trên file `data/giao_dich_thang_11.xlsx`.
