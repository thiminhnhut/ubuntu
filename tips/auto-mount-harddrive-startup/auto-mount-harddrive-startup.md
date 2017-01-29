# Tự động mount phần vùng ổ đĩa cứng khi khởi động trên hệ điều hành Ubuntu 16.04

Sưu tầm: Thi Minh Nhựt - Email: thiminhnhut@gmail.com

Thời gian: Ngày 30 tháng 01 năm 2017

## Nguồn tham khảo

1. [How to Auto Mount Hard Drive Partitions On Start Up In Ubuntu 16.04](http://sourcedigit.com/20102-how-to-auto-mount-hard-drive-partitions-automatically-on-start-up-in-ubuntu-16-04/) 
trên [sourcedigit.com](http://sourcedigit.com).

2. Từ khóa tìm kiếm: [auto mount hard drive ubuntu 16.04](https://goo.gl/cZHZwH).

## Cách thực hiện

* **Bước 1:** Mở tiện ích `Disk` từ `Ubuntu Unity Dash`.

	+ Nhấn phím `Windows` và nhập từ khóa `Disk`. Được giao diện như hình bên dưới:		
	
	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/tips/auto-mount-harddrive-startup/images/disks-utility-1.png)
	
	+ Mở tiện ích `Disks`, để xem các phân vùng ổ đĩa cứng trên máy tính. Được giao diện như hình bên dưới:
	
	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/tips/auto-mount-harddrive-startup/images/disks-utility-2.png)
	
* **Bước 2:** Chọn và cài đặt cho phân vùng ổ đĩa mà bạn muốn tự động mount khi khởi động.

	+ Chọn phân vùng ổ đĩa, ví dụ chọn phân vùng ổ đĩa có tên `Documents Internet`. 
	Được giao diện như hình bên dưới:
	
	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/tips/auto-mount-harddrive-startup/images/disks-utility-3.png)
	
	+ Chọn vào biểu tượng cài đặt phân vùng (biểu tượng hình bánh răng). Chọn `Edit Mount Options...`, 
	được giao diện như hình bên dưới:
	
	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/tips/auto-mount-harddrive-startup/images/disks-utility-4.png)
	
	+ Dòng `Automatics Mount Options` hiện chữ `ON` (tức là đang ở chế độ `OFF`). 
	Ta click vào chọn cho hiện chữ `OFF` (tức là đang ở chế độ `ON`). Được giao diện như hình bên dưới:
	
	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/tips/auto-mount-harddrive-startup/images/disks-utility-5.png)
	
	+ Để các tùy chọn như mặc định. Chọn `OK` để xác nhận thay đổi. Yêu cầu nhập mật khẩu để xác nhận. 
	Trở lại giao diện như dưới, phân vùng ổ đĩa có tên `Documents Internet` có xuất hiện biểu tượng 
	hình ngôi sao - phân vùng này sẽ được mount khi hệ thống được khởi động.
	
	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/tips/auto-mount-harddrive-startup/images/disks-utility-6.png)
	
* **Bước 3:** Khởi động lại máy để áp dụng thay đổi. Kết quả là phân vùng được cài đặt ở **Bước 2** 
sẽ tự động mount khi hệ thống khởi động.
