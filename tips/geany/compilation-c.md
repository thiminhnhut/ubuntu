# Khắc phục lỗi không Compilation được C với Geany khi sử dụng thư viện math

Sưu tầm: Thi Minh Nhựt - Email: thiminhnhut@gmail.com

Thời gian: Ngày 22 tháng 06 năm 2017

## Nguồn tham khảo

[Why am I getting “undefined reference to sqrt” error even though I include math.h header?](https://stackoverflow.com/questions/10409032/why-am-i-getting-undefined-reference-to-sqrt-error-even-though-i-include-math)

## Thông báo lỗi

Khi biên dịch với lệnh `gcc test.c -o test` thì xuất hiện thông báo lỗi như bên dưới

		/tmp/ccSyzw8L.o: In function `main':
		
		baitap3.c:(.text+0x8d): undefined reference to `sqrt'

		collect2: error: ld returned 1 exit status
		
		Compilation failed.
		

![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/cbe683d4e36d0542ba8ce5f62343125ffece69c5/tips/geany/image/compilation-c-3.png)
		
## Cách khắc phục

* Thêm tùy chọn `-lm`. Ví dụ biên dịch như sau:

		gcc test.c -o test -lm
		
* Vào `Build/Set Build Commands` được giao diện như bên dưới:

![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/cbe683d4e36d0542ba8ce5f62343125ffece69c5/tips/geany/image/compilation-c-1.png)

* Thêm tùy chọn `-lm` vào khung `Build: gcc -Wall -o "%e" "%f" -lm` trong `C commands`,
được giao diện như bên dưới:

![](https://raw.githubusercontent.com/thiminhnhut/ubuntu/cbe683d4e36d0542ba8ce5f62343125ffece69c5/tips/geany/image/compilation-c-2.png)
