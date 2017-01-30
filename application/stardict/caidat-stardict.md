# Cài đặt bộ từ điển Anh - Việt cho từ điển StarDict trên hệ điều hành Ubuntu

Thực hiện: Thi Minh Nhựt - Email: thiminhnhut@gmail.com

Thời gian: Ngày 30 tháng 01 năm 2017

## Cách cài đặt

* Phần hướng dẫn cài đặt bên dưới đã thực hiện thành công trên hệ điều hành Ubuntu 16.04.

* **Bước 1:** Cài đặt bộ từ điển `StarDict` trên Ubuntu:

		$ sudo apt-get -y install stardict stardict-plugin		
	
* **Bước 2:** Cài đặt từ điển `Anh - Việt` cho `StarDict`:

	+ Tải bộ từ điển `Anh - Việt` về máy: [Download](https://github.com/thiminhnhut/ubuntu/tree/master/application/stardict/dictionary) 
	Chọn tải về 3 file `dictd_anh-viet.dict.dz`, `dictd_anh-viet.idx` và `dictd_anh-viet.ifo`.
	
	+ Ví dụ: thư mục tải về của 3 file trên là thư mục `Downloads` (trong thư mục `/home/username`).
	
	+ Di chuyển các file của bộ từ điển `Anh - Việt` vào thư mục `/usr/share/stardict/dic`:
			
			$ sudo mv $HOME/Downloads/dictd_anh-viet.* /usr/share/stardict/dic
			
* **Lưu ý:** Cài đặt các bộ từ điển khác: thực hiện tương tự.

	Các bộ từ điển khác có trong mục [dictionary](https://github.com/thiminhnhut/ubuntu/tree/master/application/stardict/dictionary): 
`Nga - Việt`, `Pháp - Việt`, `Việt - Anh` và `Việt - Pháp`.

## Cách sử dụng

* Phần hướng dẫn sử dụng bên dưới đã thực hiện thành công trên hệ điều hành Ubuntu 16.04.

* **Bước 1:* Mở từ điển `StarDict`, có 2 cách:

	+ Cách 1: Mở từ điển `Stardict` từ thanh `Ubuntu Unity Dash`, gõ tên ứng dụng `Stardict` 
	được giao diện như hình bên dưới.
	
	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/application/stardict/images/Stardict-1.png)
	
	+ Cách 2: Mở từ điển `StarDict` từ Terminal:
	
			$ stardict			
		
* Sử dụng từ điển `StarDict`:

	+ Cách 1: Nhập trực tiếp từ cần tra vào khung bên cạnh nút `Clear`.
	
	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/application/stardict/images/Stardict-2.png)
	
	+ Cách 2: Bôi đen từ cần tra, ứng dụng sẽ tự động dịch nghĩa của từ đó.
	
	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/application/stardict/images/Stardict-3.png)
