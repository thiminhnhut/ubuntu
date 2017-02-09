# Ứng dụng tách, gộp, cắt, xoay và sắp xếp lại các trang trong file PDF trên hệ điều hành Ubuntu

Sưu tầm: Thi Minh Nhựt - Email: thiminhnhut@gmail.com

Thời gian: Ngày 09 tháng 02 năm 2017

## Nguồn tham khảo

[Merge,Split and Re-arrange PDF pages using PDF-Shuffler](http://ubuntuguide.net/mergesplit-and-re-arrange-pdf-pages-using-pdf-shuffler)

## Giới thiệu

Ứng dụng `PDF-Shuffler` có giao diện đơn giản, cho phép thực hiện các thao tác cơ bản như: 

* Tách các trang trong file pdf.

* Gộp các file pdf lại với nhau.

* Cắt, xoay hoặc sắp xếp lại các trang trong file pdf.

## Cách thực hiện

* Cài đặt `PDF-Shuffler`:

		$ sudo apt-get -y install pdfshuffler

* Cách sử dụng `PDF-Shuffler`

	+ Mở ứng dụng `PDF-Shuffler` từ `Ubuntu Unity Dash`: nhấn nút `Windows` và gõ vào từ khóa `PDF-Shuffler`.
	
	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/tips/pdf-shuffler/images/pdf-shuffler-1.png)
	
	+ Sau khi mở ứng dụng `PDF-Shuffler` được giao diện như hình bên dưới:
	
	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/tips/pdf-shuffler/images/pdf-shuffler-2.png)
	
	+ Các chức năng của các nút trên thanh công cụ:
	
	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/tips/pdf-shuffler/images/pdf-shuffler-3.png)
	
	Khi di chuyển con trỏ chuột đến từng nút, chúng sẽ hiện ra chức năng hướng dẫn cho người dùng.
	
	+ Ví dụ, nhấn vào nút dấu cộng màu xanh, dùng mở file pdf để thao tác, được giao diện như hình dưới:
	
	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/tips/pdf-shuffler/images/pdf-shuffler-4.png)
	
	+ Chọn một trang hoặc nhiều trang cần thao tác, click chuột phải sẽ có 5 thao tác cho chúng ta thực hiện:
	
		- `Rotate Right` và `Rotate Left`: xoay phải và xoay trái.
		
		- `Crop`: Cắt.
		
		- `Delete`: Xóa.
		
		- `Export selection`: Xuất ra file pdf.
		
	+ Muốn tách trang trong file pdf, có 2 cách:
	
		* Không nên ghi đè lên nội dung của file cũ để tránh mất dữ liệu gốc.
	
		- Cách 1: xóa các trang không cần thiết, rồi chọn nút `save` để lưu lại nội mới đã chỉnh sữa. 
		Lưu lại tên mới.
		
		- Cách 2: Chọn ra những trang cần thiết rồi click chuột phải chọn `Export selection`. 
		Lưu lại tên file.
		
	+ Muốn gộp nhiều file pdf lại với nhau: chọn nút dấu cộng màu xanh trên thanh công cụ 
	để ghép nối tiếp các file pdf với nhau.
	
	+ Muốn sắp xếp lại các trang trong file pdf:
	
		+ Dùng chuột di chuyển các trang đến những vị trí mong muốn.
		
		+ Click chuột phải chọn `Export selection`. Lưu lại tên file.
		
	+ Xoay các trang thì chọn `Rotate Right` và `Rotate Left`.
	
	+ Cắt các trang pdf chọn `Crop`.
