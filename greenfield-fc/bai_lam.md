# Bài làm – GreenField FC

Họ và tên: Nguyễn Thái Hoàng  
Lớp: CNTT3

## 4.2 Thao tác CLI
Lệnh đã chạy:
```shell
pwd
ls -Force
mv .\ghi-chu-ban-giao.txt .\docs\
mkdir backup
cp .\data\danh-sach-cau-thu.xlsx .\backup\
rm .\temp_002.tmp
cd .\logs\
ls
cd ..
Get-ChildItem -Recurse -Force
```
Kết quả liệt kê toàn bộ dự án (bao gồm file ẩn):
 Directory: D:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----         11/5/2026   1:30 PM                backup
d-----         11/5/2026   1:28 PM                data
d-----         11/5/2026   1:30 PM                docs
d-----         11/5/2026   1:26 PM                evidence
d-----         11/5/2026   1:28 PM                logs
d-----         11/5/2026   1:23 PM                web
-a----         11/5/2026   1:23 PM             92 .env
-a----         11/5/2026   1:23 PM            701 bai_lam.md
-a----         11/5/2026   1:23 PM          43407 Danh Sach Cau Thu.xlsx.inspect.ndjson


    Directory: D:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/5/2026   1:23 PM           8624 danh-sach-cau-thu.xlsx


    Directory: D:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/5/2026   1:23 PM           8624 danh-sach-cau-thu.xlsx


    Directory: D:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/5/2026   1:23 PM            554 ghi-chu-ban-giao.txt


    Directory: D:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/5/2026   1:23 PM            560 access.log


    Directory: D:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\web


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----         11/5/2026   1:23 PM                images
-a----         11/5/2026   1:23 PM            750 app.js
-a----         11/5/2026   1:23 PM            680 index.html
-a----         11/5/2026   1:23 PM            401 style.css


    Directory: D:\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\web\images


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/5/2026   1:23 PM           2115 greenfield-logo.png
-a----         11/5/2026   1:23 PM            413 greenfield-logo.svg



## 4.3 Lọc log
**a) Lệnh lọc status=500:**
```shell
Get-Content ".\logs\access.log" | Select-String "status=500" > .\logs\loi-500.txt
Get-Content ".\logs\loi-500.txt" -Head 3
```

Hai dòng đầu của loi_500.txt:
2026-10-28 18:03:25 GET /api/players status=500
2026-10-28 18:05:12 GET /api/players status=500

**b) Lệnh đếm status=404 và kết quả:**
```shell
(Get-Content ".\logs\access.log" | Select-String "status=404").Count
4
```

## 4.4 Script báo cáo
Lệnh chạy script:
```shell
.\tong_hop.ps1
```

Nội dung logs/tong_hop.txt:
=== BAO CAO GREENFIELD FC ===

2026-10-28 18:03:22 GET /images/logo-sai.png status=404
2026-10-28 18:07:44 GET /fixtures status=404
2026-10-28 18:13:52 GET /favicon.ico status=404
2026-10-28 18:32:18 GET /api/players status=404




Count    : 3
Average  : 
Sum      : 
Maximum  : 
Minimum  : 
Property : 

## 4.6 Kiểm tra website và báo cáo lỗi
| Tab | Tên file/thông báo | Cách khắc phục |
|---|---|---|
| Network | | |
| Console | | |

**Context:**

**Expected:**

**Actual:**

**Log:**

Câu tìm kiếm Google:

## Ghi chú Excel
Công thức/khó khăn đã gặp:
