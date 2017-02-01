# Cách để viết một Shell Script

Thực hiện: Thi Minh Nhựt - Email: thiminhnhut@gmail.com

Thời gian: Ngày 01 tháng 02 năm 2017

## Nguồn tham khảo

[How to write shell script](http://www.freeos.com/guides/lsst/ch02sec01.html)

## Cách thực hiện

* Phần hướng dẫn này ví dụ sử dụng shell `bash` và thực hiện trên hệ điều hành Ubuntu 16.04.

* Các bước quan trọng khi viết shell script: 
Viết nội dung cho shell script - Đặt quyền thực thi - Thực thi shell script.

* **Bước 1:** Viết nội dung shell script bằng các trình soạn thảo ưa thích (nano, vi, geany,...). 
Ví dụ:

	- Mở trình soạn thảo `nano`:

			$ nano hello.sh
	
	- Thêm vào nội dung như bên dưới:
		
			#!/bin/bash
		
			# script: hello.sh
			
			echo "Hello $USER"
			
		Nhấn `Ctrl + X + Y` và `Enter` để lưu lại nội dung vào thoát khởi trình soạn thảo `nano`.
		
	- Nội dung của script `hello.sh`: [Download](https://github.com/thiminhnhut/ubuntu/blob/master/shellscript/tutorials/script/hello.sh)
	
* **Bước 2:** Đặt quyền thực thi cho shell script vừa được viết ra.

	- Chúng ta có thể chọn một trong 2 cách bên dưới:
	
			$ chmod +x my_script.sh
			
			$ chmod 755 my_script.sh
	
		Tham số `755` có nghĩa là: chủ sở hữu có cả 3 quyền `rwx` -- đọc - viết - thực thi, 
		các nhóm khác chỉ có 2 quyền là `rx` - đọc - thực thi.
	
	- Ví dụ:
	
			$ chmod +x hello.sh
		
* **Bước 3:** Thực thi shell script vừa viết.

	- Có 3 cách sau:
	
			$ bash my_script.sh
			
			$ sh my_script.sh
			
			$ ./my_script.sh
			
		Chúng ta có thể truyền thêm đường dẫn vào các lệnh trên nếu không ở thư mục làm việc.
	
	- Ví dụ: chúng ta đang ở thư mục làm việc và thực hiện lệnh bên dưới.
	
			$ ./hello.sh
			
			Hello minhnhut
