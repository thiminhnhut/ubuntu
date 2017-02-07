# Hiển thị dữ liệu lên màn hình với lệnh echo trong Shell

Thực hiện: Thi Minh Nhựt - Email: thiminhnhut@gmail.com

Thời gian: Ngày 07 tháng 02 năm 2017

## Nguồn tham khảo

[echo Command](http://www.freeos.com/guides/lsst/ch02sec06.html)

## Cách thực hiện

* Khi lập trình trong Shell muốn hiển thị dữ liệu lên màn hình để kiểm tra, chúng ta sử dụng lệnh 
`echo`. Cú pháp lệnh như sau:

		echo [tùy chọn] [chuỗi, biến,...]
		
* Một số tùy chọn với lệnh `echo`:

	+ `-n`: Không tạo ra thêm dòng mới.
	
	+ `-e`: cho phép sử dụng các lệnh đặc biệt như `\a, \b, \c, \n, \r, \t, \\`. 
	Các tùy chọn này mô tả bằng ví dụ sẽ dễ hình dung hơn.
	
* Ví dụ về sử dụng lệnh `echo` với các tùy chọn:


		$ echo "Hello World!"
		
		Hello World!
		
		$ echo -e "Hello\bWorld!"
		
		HellWorld!
		
		$ echo -n "Hello World!"
		
		Hello World!$				# Cùng cùng hàng với dấu nhắc lệnh $
		
		$ echo -e "Hello\nWorld!"	# \n Xuống dòng mới
		
		Hello
		
		World
	
		$ echo -e "Hello\tWorld!"	# \t Khoảng cách tab
		
		Hello	World!
		
		$ echo -e "Hello\\World!"	# \\ --> \
		
		Hello\World!
