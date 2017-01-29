# Cài đặt nhiều tài khoản Dropbox trên hệ điều hành Ubuntu

Thực hiện: Thi Minh Nhựt - Email: thiminhnhut@gmail.com

Thời gian: Ngày 28 tháng 01 năm 2017

## Cách thực hiện

* Phần hướng dẫn bên dưới đã thực hiện thành công trên hệ điều hành Ubuntu 16.04.

* Muốn cài đặt nhiều tài khoản Dropbox trên máy tính thì ta tạo các thư mục `.dropbox-username` 
khác nhau và thực hiện theo các bước từ **Bước 1** đến **Bước 6**.

* **Bước 1:** Tạo thư mục `.dropbox-username` (với `username` là tên của tài khoản trên Dropbox) 
trong thư mục `/home/username/` (với `username` là tên của người dùng trên máy tính). 
Ví dụ, gõ lệnh sau trong của sổ Terminal (`Ctrl + Alt + T`):

		$ mkdir $HOME/.dropbox-thiminhnhut

	Thay tên `thiminhnhut` thành tên tài khoản Dropbox của bạn 
	(để tránh nhầm lẫn tên các thư mục khi sử dụng).

* **Bước 2:** Tiếp tục gõ lệnh bên dưới để cài đặt Dropbox cho tài khoản ở **Bước 1**.

		$ HOME=$HOME/.dropbox-thiminhnhut /usr/bin/dropbox start -i

	Thay tên thư mục `.dropbox-thiminhnhut` thành tên thư mục bạn tạo ở **Bước 1**.

* **Bước 3:** Sau khi thực hiện lệnh trên được giao diện như hình dưới.

	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/application/dropbox/images/dropbox-installation-1.png)

	+ Chọn `OK`. Được giao diện như hình dưới.

	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/application/dropbox/images/dropbox-installation-2.png)

	+ Đợi cho quá trình tải về và cài đặt hoàn thành. Được giao diện như hình dưới.

	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/application/dropbox/images/dropbox-setup-1.png)

	+ Điền thông tin của tài khoản Dropbox vào rồi chọn `Sign In`. Được giao diện như hình dưới.

	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/application/dropbox/images/dropbox-setup-2.png)

	Chọn `Open my Dropbox folder` để bắt đầu đồng bộ dữ liệu trên Dropbox về máy tính.

* **Bước 4:** Tạo file `start-dropbox-username.sh` (với `username` là tên của tài khoản 
trên Dropbox ở **Bước 1**).

	+ Ví dụ, gõ lệnh sau trong cửa số Terminal:

			$ nano $HOME/start-dropbox-thiminhnhut.sh

	Thay tên `thiminhnhut` thành tên bạn tạo ở **Bước 1**.

	+ Thêm vào file `start-dropbox-thiminhnhut.sh` nội dung sau:

			#!/bin/bash

			HOME=$HOME/.dropbox-thiminhnhut /usr/bin/dropbox start

	Thay tên thư mục `.dropbox-thiminhnhut` thành tên bạn tạo ở **Bước 1**. 
	Nhấn `Ctrl + X + Y` và `Enter` để lưu lại nội dung và thoát.

	+ Đặt quyền thực thi cho file `start-dropbox-thiminhnhut.sh`, gõ tiếp lệnh sau:

			$ sudo chmod 755 $HOME/start-dropbox-thiminhnhut.sh
    ​
	Thay tên `thiminhnhut` thành tên bạn tạo ở *Bước 1*.

* **Bước 5:** Làm cho Dropbox khởi động cùng hệ thống để có thể đồng bộ dữ liệu. 

	+ Tìm và mở ứng dụng `Startup Applications`: nhấn phím `Windows` và 
	gõ vào từ khóa `Startup Applications`, được giao diện như hình dưới.

	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/application/dropbox/images/startup-application-1.png)

	+ Sau khi mở ứng dụng `Startup Applications`, được giao diện như hình dưới:

	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/application/dropbox/images/startup-application-2.png)

	+ Nhấn vào nút `Add` được giao diện như hình dưới:

	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/application/dropbox/images/startup-application-3.png)

	+ Điền vào các thông tin sau:

		- `Name: Dropbox account thiminhnhut`

		- `Command: /home/minhnhut/start-dropbox-thiminhnhut.sh`

		- `Comment: Dong bo du lieu Dropbox`

	Thay tên `thiminhnhut` thành tên tài khoản Dropbox bạn tạo ở **Bước 1**, 
	và tên `minhnhut` thành tên người dùng trên máy tính.

	+ Sau khi điền hoàn thành thông tin được giao diện như hình dưới:

	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/application/dropbox/images/startup-application-4.png)

	+ Chọn `Save`, được giao diện như hình dưới (đã thêm một ứng mới khi khởi động):

	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/application/dropbox/images/startup-application-5.png)
	
	+ Chọn `Close` để đóng của sổ `Startup Applications Preferences`.

* **Bước 6:** Tạo thư mục link đến thư mục `Dropbox` nằm trong thư mục `.dropbox-username`.

	+ Mặc định thư mục đồng bộ `Dropbox` nằm trong thư mục `.dropbox-username` 
	(ví dụ `.dropbox-thiminhnhut`), gây khó khăn cho việc lưu trữ dữ liệu (do thư mục 
	có dấu `.` phía trước sẽ bị ẩn đi, nhấn `Ctrl + H` để hiện lên tất cả các thư mục).

	+ Tạo thư mục link đến thư mục `Dropbox` trong thư mục `.dropbox-username`. 
	Ví dụ `.dropbox-thiminhnhut`:

			$ ln -s $HOME/.dropbox-thiminhnhut/Dropbox $HOME/Dropbox-thiminhnhut

	+ Sau này bạn chỉ cần thao tác trên thư mục `Dropbox-thiminhnhut`, dữ liệu tự động 
	link đến thư mục `Dropbox` trong thư mục `.dropbox-thiminhnhut` để đồng bộ dữ liệu giữa 
	máy tính và trên Dropbox.

* **Bước 7:** Khởi động lại máy tính bạn sẽ thấy hai tài khoản Dropbox đã được cài đặt trên máy tính.

	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/application/dropbox/images/start-2-dropbox.png)
