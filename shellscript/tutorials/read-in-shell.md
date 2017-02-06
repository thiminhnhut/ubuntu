# Đọc dữ liệu nhập vào từ bàn phím với lệnh read trong Shell

Thực hiện: Thi Minh Nhựt - Email: thiminhnhut@gmail.com

Thời gian: Ngày 06 tháng 02 năm 2017

## Nguồn tham khảo

1. [The read Statement](http://www.freeos.com/guides/lsst/ch02sec10.html)

2. [Keyboard Input and Arithmetic](http://linuxcommand.org/wss0110.php)

## Cách thực hiện

* Để đọc dữ liệu mà người dùng nhập từ bàn phím trong Shell chúng ta sử dụng lệnh `read` với cú pháp:

		read tên_biến_1 tên_biến 2 ...

* **Lưu ý:** chúng ta có thể đọc cùng một lúc nhiều biến, các biến phân cách với nhau bởi khoảng trống 
(dấu `space`) không sử dụng dấu phẩy (`,`) để phân cách các biến.

* Hai tùy chọn `-t` và `-s` của lệnh `read`:

	+ Tùy chọn `-t số_giây`: giới hạn thời gian cho phép nhập vào. Nếu vượt quá `số_giây` 
	thì không cho phép nhập vào. Ví dụ về tùy chọn `-t` sẽ được trình bày ở phần sau.
	
	+ Tùy chọn `-s`: làm cho những gì người dùng nhập vào không hiển thị lên màn hình. 
	Ví dụ như nhập mật khẩu,...
		
* Các ví dụ về cách sử dụng lệnh:

	+ **Ví dụ 1:** Viết script, khi người dùng nhập vảo tên (`name`) thì in ra chữ `Hello $name!`

			#!/bin/bash
		
			# Script: read.sh
		
			# Set execute permission: chmod +x read.sh
		
			# Run script: ./read.sh
			

			echo -n "Moi nhap ten: "
			
			read name

			
			echo "Hello $name!"
	
		- Tùy chọn `-n` trong lệnh `echo` giúp nhập dữ liệu trên cùng một dòng.
		
		- Nội dung của script `read.sh`: [Download](https://github.com/thiminhnhut/ubuntu/blob/master/shellscript/tutorials/script/read.sh)
	
		- Thực thi script `read.sh`
	
				./read.sh
			
				Moi nhap ten: Nhut
			
				Hello Nhut!
				
	+ **Ví dụ 2:** Sử dụng tham số `-s` trong lệnh `read`. Không hiển thị chuỗi ký tự 
	mà người dùng nhập vào sau đó xuất ra chuỗi ký tự này.

			#!/bin/bash
			
			# Script: pass.sh
			
			# Set execute permission: chmod +x pass.sh
			
			# Run script: ./pass.sh


			echo "Moi nhap password: "
			
			read -s pass

			
			echo "Password cua ban la: $pass"

		- Nội dung của script `pass.sh`: [Download](https://github.com/thiminhnhut/ubuntu/blob/master/shellscript/tutorials/script/pass.sh)
	
		- Thực thi script `pass.sh`
	
				./pass.sh
			
				Moi nhap password:
			
				Password cua ban la: @$%#12A	

	+ **Ví dụ 3:** Viết chương trình tính tổng, hiệu, tích của hai số `a` và `b` được nhập từ bàn phím.
	
			#!/bin/bash
			
			# Script: pheptoan.sh
			
			# Set execute permission: chmod +x pheptoan.sh
			
			# Run script: ./pheptoan.sh


			echo -n "Nhap vao hai so a, b: "
			
			read a b

			
			tong=$((a + b))
			
			hieu=$((a - b))
			
			tich=$((a * b))

			
			echo "Tong cua hai so $a va $b: $tong"
			
			echo "Hieu cua hai so $a va $b: $hieu"
			
			echo "Tich cua hai so $a va $b: $tich"
	
		- Nội dung của script `pheptinh.sh`: [Download](https://github.com/thiminhnhut/ubuntu/blob/master/shellscript/tutorials/script/pheptinh.sh)
	
		- Thực thi script `pheptinh.sh`
	
				./pheptinh.sh
			
				Nhap vao hai so a, b: 4 5
				
				Tong cua hai so 4 va 5: 9
				
				Hieu cua hai so 4 va 5: -1
				
				Tich cua hai so 4 va 5: 20
