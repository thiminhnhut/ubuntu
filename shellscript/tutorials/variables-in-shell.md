# Biến trong Shell

Thực hiện: Thi Minh Nhựt - Email: thiminhnhut@gmail.com

Thời gian: Ngày 02 tháng 02 năm 2017

## Nguồn tham khảo

[Variables in Shell](http://www.freeos.com/guides/lsst/ch02sec02.html)

## Hai loại biến trong Shell

* Phần hướng dẫn này ví dụ sử dụng shell `bash` và thực hiện trên hệ điều hành Ubuntu 16.04.

* Trong Shell có hai loại biến như sau:

	+ Biến hệ thống: Biến được tạo ra và duy trì bởi chính hệ thống. 
	Tên biến gồm các ký tự in hoa, ví dụ: `PATH`, `HOME`,...
	
	+ Biến do người dùng định nghĩa: Biến được tạo ra và duy trì bởi người dùng. 
	Tên biến gồm các ký tự không in hoa, ví dụ: `resp`, `a`,...
	
## Biến hệ thống

* Một số biến hệ thống trong Shell:

	| Biến hệ thống | Kết quả mô tả     | Giải thích                    |
	|---------------|-------------------|-------------------------------|
	|BASH           |/bin/bash          |Tên Shell Bash                 |
	|SHELL          |/bin/bash          |Tên Shell                      |
	|BASH_VERSION   |4.3.46(1)-release  |Phiên bản của Shell Bash       |
	|COLUMNS        |133                |Số cột trên màn hình           |
	|LINES          |45                 |Số dòng trên màn hình          |
	|HOME           |/home/minhnhut     |Địa chỉ thư mục chính          |
	|PWD            |/home/minhnhut     |Thư mục làm việc hiện tại      |
	|LOGNAME        |minhnhut           |Tên đăng nhập máy tính         |
	|USER           |minhnhut           |Tên người dùng                 |
	|OSTYPE         |linux-gnu          |Tên phân loại của hệ điều hành |
	|PATH           |                   |Vị trí đường dẫn               |
	|PS1            |                   |Cài đặt dấu nhắc lệnh          |
	
* Để xem giá trị của các biến trên dùng lệnh: `echo $TÊN_BIẾN_HỆ_THỐNG`. Ví dụ:

		$ echo $BASH
		
		/bin/bash

## Biến do người dùng định nghĩa

* Cách khai báo biến do người dùng định nghĩa:

		tên_biến=giá_trị_của_biến
		
* **Lưu ý:** Không có khoảng trống giữa 2 bên dấu `=` của phép gán.

* Ví dụ:

		$ a=2
		
		$ b="Hello"
