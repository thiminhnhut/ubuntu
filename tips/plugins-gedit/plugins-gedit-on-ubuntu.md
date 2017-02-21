# Biến GEdit thành IDE trên Ubuntu 16.04

Sưu tầm: Thi Minh Nhựt - Email: thiminhnhut@gmail.com

Thời gian: Ngày 21 tháng 02 năm 2016

## Nguồn tham khảo

[Biến gedit thành IDE – Make geidt is an IDE](http://www.nguyenvanquan7826.com/2014/06/26/linux-bien-gedit-thanh-ide-make-geidt-is-an-ide/)

## Cách thực hiện

* **Bước 1:** Cài đặt gói `gedit-plugins` cho Ubuntu:

		$ sudo apt-get install gedit-plugins
		
* **Bước 2:** Tùy chỉnh cài đặt với gói `gedit-plugins`, vào `Edit/ Preferences`.

	+ Trong tab `View`:
	
		- `Display line numbers`: Hiển thị số dòng.
		
		- `Highlight current line`: Làm nổi bật dòng hiện tại.
	
	+ Trong tab `Editor`:
	
		- `Tab width`: quy định khoảng cách khi nhấn phím `Tab`.
		
		- `Autosave files every`: Tự động save file sau thời gian quy định.
		
	+ Trong tab `Font & Colors`:
	
		- Bỏ chọn `Use the system fixed width font (Ubuntu Môn 13)`: để thay đổi được font chữ.
		
		- Thay đổi màu nền trong khung `Color Scheme`.
		
	+ Trong tab `Plugins`:
	
		- Chọn `Bracket Complete`: tự động hoàn thành dấu ngoặc.
		
		- Chọn `Code Comment`: chủ thích cả khối code (nhiều dòng code) bằng cách bôi đen và nhấn `Ctrl + M`.
		
		- Chọn `Embedded Terminal`: thêm cửa sổ `Terminal` vào bên dưới `Text Editor` bằng cách nhấn `Ctrl + F9`.

		- Chọn `External Tools`: thực hiện các lệnh ngoài và shell script.
		
		- Chọn `Insert Date/Time`: chèn thời gian vào vị trí con trỏ.
		
		- Chọn `Snippets`: Tự động hoàn thiện những đoạn code hay dùng bằng cách ấn `Ctrl + Space`. 
		Vào `Tools/Manage Snippets` để thêm những từ khóa tắt.
		
* **Bước 3:** Tự động hoàn thành code

	+ Cài đặt gói `vim`:
	
			$ sudo apt-get install vim
			
	+ Vào `Tools/Manage External Tools`, click vào dấu `+`.
	
		- Nhập vào đoạn code bên dưới:
	
				#!/bin/sh
			
				CMD_FILE_NAME=.formatcommand;
			
				TMP_FILE_NAME=.tempvimfile;
			
				touch $CMD_FILE_NAME&&echo "gg=G :wq! "$TMP_FILE_NAME > $CMD_FILE_NAME&&(vim $GEDIT_CURRENT_DOCUMENT_NAME -s $CMD_FILE_NAME > /dev/null 2>/dev/null)&&rm $CMD_FILE_NAME;
			
				cat $TMP_FILE_NAME
			
				rm $TMP_FILE_NAME
		
		- `Shortcut Key`: Chọn phím tắt, ví dụ: `Shift + Ctrl + F`.
		
		- `Save`: Chọn `Current document`.
		
		- `Input`: Chọn `Nothing`.
		
		- `Output`: Chọn `Replace current document`.
		
		- `Applicability`: Chọn `All Document` và `All languages`.
		
		- Sau này muốn tự động định dạng code: Nhấn tổ hợp phím `Shift + Ctrl + F`.
		
	+ Sau khi tùy chỉnh được giao diện cài đặt như hình dưới: Thẻ `Format code (Shift + Ctrl + F)` là phần vừa định nghĩa bên trên.
	
		![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/tips/plugins-gedit/images/gedit-auto-format-code.png)
