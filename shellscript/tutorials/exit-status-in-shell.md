# Kiểm tra trạng thái thoát khi thực thi các câu lệnh hoặc script trong Shell

Thực hiện: Thi Minh Nhựt - Email: thiminhnhut@gmail.com

Thời gian: Ngày 04 tháng 02 năm 2017

## Nguồn tham khảo

[Exit Status](http://www.freeos.com/guides/lsst/ch02sec09.html)

## Cách thực hiện

* Khi thực hiện một lệnh hoặc một script, nó sẽ trả về hai kiểu giá trị để thông báo câu lệnh 
hoặc script có thực hiện thành công hay không:

	+ Trả về kết quả là `0`: nếu thực hiện thành công.
	
	+ Trả về kết quả `khác 0`: nếu không thực hiện thành công.
	
* Để kiểm tra trạng thái thoát khi thực hiện câu lệnh hoặc script, 
chúng ta dựa vào hai giá trị trên bằng `0` hoặc `khác 0`.
	
* Để xem trạng thái thoát, chúng ta sử dụng biến `$?`.

* Ví dụ:

		$ ls				# Hiển thị danh sách các tập tin hoặc thư mục
		
		$ echo $?
		
		0					# Lệnh được thực hiện thành công
		
		$ rm unkownfile		# file unkownfile không có trong thư mục
		
		$ echo $?
		
		1					# Lệnh thực hiện không thành công
		
		$ expr 1 + 2
		
		3
		
		$ echo $?
		
		0
		
		$ expr 1+ 2
		
		expr: syntax error
		
		$ echo $?
		
		2

