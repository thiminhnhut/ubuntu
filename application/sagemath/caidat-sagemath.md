# Cài đặt SageMath trên hệ điều hành Ubuntu

Sưu tầm: Thi Minh Nhựt - Email: thiminhnhut@gmail.com

Thời gian: Ngày 29 tháng 01 năm 2017

## Nguồn tham khảo:

[SageMath - Download for Linux](http://www.sagemath.org/download-linux.html) trên [sagemath.org](http://www.sagemath.org/index.html)

## Hướng dẫn cài đặt

* Phần hướng dẫn bên dưới đã thực hiện thành công trên hệ điều hành Ubuntu 16.04.

* Cài đặt SageMath:

		sudo -E apt-add-repository -y ppa:aims/sagemath
		
		sudo -E apt-get update
		
		sudo -E apt-get install sagemath-upstream-binary
