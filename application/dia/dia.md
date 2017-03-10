# Vẽ lưu đồ giải thuật với phần mềm Dia trên hệ điều hành Ubuntu

Thực hiện: Thi Minh Nhựt - Email: thiminhnhut@gmail.com

Thời gian: Ngày 10 tháng 03 năm 2017

## Hướng dẫn cài đặt

* Phần hướng dẫn bên dưới đã thực hiện thành công trên hệ điều hành Ubuntu 16.04.

* Cài đặt `Dia` trong cửa sổ Terminal (`Ctrl + Alt + T`):

		$ sudo apt-get install dia
		
* Mở phần mềm `Dia` từ `Ubuntu Unity Dash`: gõ tên `Dia`, được giao diện như hình bên dưới:

![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/d68dd045b2ae35779ccaf5eec8d40156ba921018/application/dia/images/dia-1.png)

* Mở phần mềm `Dia` được giao diện như hình bên dưới: ở chế độ `flowchart` để vẽ lưu đồ.

![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/d68dd045b2ae35779ccaf5eec8d40156ba921018/application/dia/images/dia-2.png)

* Tùy chỉnh để gõ được tiếng Việt trong phần mềm `Dia`:

	+ Theo cài đặt mặc định thì không được tiếng Việt trong phần mềm `Dia`.
	
	+ Tìm nơi cài đặt phần mềm `Dia`:
	
			$ which dia
			
			/usr/bin/dia
	
	+ Mở file `dia`:
	
			$ sudo nano /usr/bin/dia

	+ Tìm đến dòng `dia-normal --integrated "$@"` và chú thích lại nó:
			
			#dia-normal --integrated "$@"
			
	+ Thay dòng trên bằng dòng mới bên dưới:
			
			dia-normal "$@"
			
	+ Nội dung của file `dia` sau khi thay thế được như sau:
	
	
			#!/bin/sh
			
			#
			
			# Wrapped that calls dia in integrated version
			
			#

			#dia-normal --integrated "$@"
			
			dia-normal "$@"

* Ngoài hỗ trợ vẽ lưu đồ giải thuật, phần mềm `dia` còn hổ trợ vẽ nhiều sơ đồ khác, 
hổ trợ xuất ra file ảnh hoặc file `.tex`
