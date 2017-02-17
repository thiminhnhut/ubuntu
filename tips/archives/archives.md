# Nén và giải nén file hoặc thư mục trên hệ điều hành Ubuntu

Sưu tầm: Thi Minh Nhựt - Email: thiminhnhut@gmail.com

Thời gian: Ngày 17 tháng 02 năm 2017

## Nguồn tham khảo

1. [How to install 7zip to extract rar files](http://askubuntu.com/questions/348173/how-to-install-7zip-to-extract-rar-files/348176)

2. [How to use 7zip on Linux command Line](https://www.ibm.com/developerworks/community/blogs/6e6f6d1b-95c3-46df-8a26-b7efd8ee4b57/entry/how_to_use_7zip_on_linux_command_line144?lang=en)

## Giới thiệu

* Để nén hoặc giải nén các file hoặc thư mục trên hệ điều hành Ubuntu chúng ta sử dụng các gói lệnh 
`p7zip`, `p7zip-rar`, `p7zip-full`, `rar`, hoặc `unrar`,...

* Chúng ta có thể thao tác ở chế độ giao diện hoặc chế độ dòng lệnh tùy vào gói lệnh cài đặt.

## Cách thực hiện

* Cài đặt hết các gói lệnh bên dưới hoặc chỉ cài đặt những gói lệnh cần thiết.

* Gói lệnh `p7zip`:

	+ Thao tác ở chế độ dòng lệnh.

	+ Cài đặt:

			sudo apt-get install p7zip
	
* Gói lệnh `p7zip-full`:

	+ Thao tác ở chế độ dòng lệnh.

	+ Cài đặt:

			sudo apt-get install p7zip-full
		
* Gói lệnh `rar` và `unrar` hoặc `p7zip-rar`:

	+ Thao tác với file `rar`:
	
	+ Cài đặt gói lệnh `rar` hoặc `unrar`:

			sudo apt-get install rar unrar
			
	+ Cài đặt gói lệnh `p7zip-rar`:
			
			sudo apt-get install p7zip-rar

* Sử dụng nén hoặc giải nén file hoặc thư mục với giao diện đồ hoạ:

	+ Click chuột phải chọn thư mục cần nén hoặc giải nén.
	
	+ Thao tác nén: chọn `Compress...` rồi chọn phần mở rộng sau khi nén (có thể là `.rar`, `.zip`,...)
	
	+ Thao tác giải nén: chọn `Extract Here`.
