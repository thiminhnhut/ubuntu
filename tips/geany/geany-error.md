# Khắc phục lỗi không mở được Geany trên hệ điều hành Ubuntu

Sưu tầm: Thi Minh Nhựt - Email: thiminhnhut@gmail.com

Thời gian: Ngày 21 tháng 06 năm 2017

## Nguồn tham khảo

[sudo geany throws fatal error [duplicate]](https://askubuntu.com/questions/552916/sudo-geany-throws-fatal-error)

## Nội dung

* Khi mở Geany trên hệ điều hành Ubuntu nếu gặp lỗi như sau:
**Geany tried to access the Unix Domain socket of another instance running as another user. 
This is a fatal error and Geany will now quit.**

![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/master/tips/geany/image/geany-error.png)

* Cách khắc phục: gõ lệnh sau trong cửa số Terminal.

		$ sudo -H rm ~/.config/geany/geany_socket_*
