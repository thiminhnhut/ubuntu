# Sử dụng tiện ích sensors-unity để xem nhiệt độ CPU trên máy tính

Tìm hiểu: Thi Minh Nhựt - Email: thiminhnhut@gmail.com

Thời gian: Ngày 08 tháng 02 năm 2017

## Tài liệu tham khảo

[Display CPU Temperature in the Unity Launcher](Display CPU Temperature in the Unity Launcher).

## Mục đích cài đặt tiện ích sensors-unity

Tiện ích `sensors-unity` cho phép theo dõi nhiệt độ CPU trên Ubuntu, Linux,...

![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/tips/temperature-cpu/images/sensor-minotor-2.png)

## Hướng dẫn cài đặt

* **Bước 1:** Cài đặt `lm-sensors`.

		$ sudo apt install lm-sensors

* **Bước 2:** Thêm `sensors-unity` vào `repository` bằng `PPA`:

		$ sudo add-apt-repository ppa:rojtberg/sensors-unity
	
* **Bước 3:** Cập nhật lại `repository` và cài đặt `sensors-unity`:

		$ sudo apt-get update && sudo apt install sensors-unity	

## Hướng dẫn sử dụng

* Cấu hình xác nhận phần cứng:

		$ sudo sensors-detect
		
	+ Làm theo hướng dẫn để xác nhận và cấu hình phần cứng.
	
	+ Các cấu hình xác nhận phần cứng này được lưu trữ trong file `/etc/sensors3.conf`.
	
* Mở tiện ích `sensors-unity` từ `Ubuntu Unity Dash`:

	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/tips/temperature-cpu/images/sensor-minotor-1.png)
	
* Sau khi mở tiện ích `sensors-unity`, ta được giao diện như hình dưới:

	![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/tips/temperature-cpu/images/sensor-minotor-2.png)
