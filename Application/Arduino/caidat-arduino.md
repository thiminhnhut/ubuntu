# Cài đặt Arduino IDE trên hệ điều hành Ubuntu 16.04

Thực hiện: Thi Minh Nhựt - Email: thiminhnhut@gmail.com

Thời gian: Ngày 23 tháng 08 năm 2017

## Nguồn tham khảo

1. [Install the Arduino Software (IDE) on on Linux](https://www.arduino.cc/en/Guide/Linux)

1. [Changing permissions on serial port](https://askubuntu.com/questions/58119/changing-permissions-on-serial-port)

## Nội dung

* Truy cặp vào địa chỉ https://www.arduino.cc/en/Main/Software tải chương trình Arduino IDE về máy tính (chọn phiên bản phù hợp với hệ điều hành).

* Tiến hành giải nén file vừa mới tải về và thực hiện cài đặt:

    + Ví dụ, tải về được file như sau `arduino-1.8.3-linux64.tar.xz`, tiến hành giải nén được thư mục `arduino-1.8.3`.
    
    + Di chuyển thư mục `arduino-1.8.3` đến ví trị mà bạn muốn cài đặt rồi thực hiện các lệnh sau trên Terminal (mở cửa sổ Terminal tại vị trí đặt thư mục `arduino-1.8.3`).
    
    + Thực hiện các lệnh sau để cài đặt:
    
    ```bash
    $ cd arduino-1.8.3
    $ ./install.sh
    ```
    
    + Cho phép đọc dữ liệu từ cửa sổ Terminal mà không sử dụng quyền `root` (với `username` là tên mà bạn muốn cho phép truy cập):
    
    ```bash
    $ sudo usermod -a -G dialout <username>
    ```
    
    + Cho phép upload chương trình mà không sử dụng quyền `root` (ví dụ `ttyACM0` là tên port của kết nối giữa Arduino Uno với máy tính, trong trường hợp tên khác thì thay đổi thành tên port cho phù hợp (vào `Tools/Port` để xem)):
    
    ```bash
    $ sudo chmod 666 ttyACM0
    ```
* Kết luận: bạn có thể sử dụng Arduino IDE với quyền `username` hiện tại mà không cần sử dụng quyền `root`.
