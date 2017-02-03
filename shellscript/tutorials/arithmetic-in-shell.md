# Phép tính toán học trong Shell

Thực hiện: Thi Minh Nhựt - Email: thiminhnhut@gmail.com

Thời gian: Ngày 03 tháng 02 năm 2017

## Nguồn tham khảo

[Shell Arithmetic](http://www.freeos.com/guides/lsst/ch02sec07.html)

## Phép tính toán học trong Shell

* Cú pháp `expr số_thứ_nhất phép_toán số_thứ_hai`. Các phép toán:

	- Phép cộng: `+`.
	
	- Phép trừ: `-`.
	
	- Phép nhân: `\*` (không phải là `*`).
	
	- Phép chia lấy nguyên: `/`.
	
	- Phép chia lấy dư: `%`.

* **Lưu ý:** Giữa số và phép toán cần có khoảng trống.

* Phân biệt dấu `" "` và `' '` với ``:

	+ Cặp dấu `" "` và `' '`: các phép toán đặt trong cặp dấu này không thực hiện được. Ví dụ:			
			
			$ echo "expr 1 + 2"
			
			expr 1 + 2
			
			$ echo 'expr 1 + 2'
			
			expr 1 + 2
		
	+ Cặp dấu ``: các phép toán đặt trong cặp dấu này thực hiện được. Ví dụ:
	
			$ echo `expr 1 + 2`
			
			3
			
	+ Kết hợp giữa các dấu `" "` (không áp dụng được với dấu `' '`) với dấu ``:
	
			$ echo "Phep cong cua 1 va 2--> `expr 1 + 2`"
			
			Phep cong cua 1 va 2--> 3
			
			$ echo 'Phep cong cua 1 va 2--> `expr 1 + 2`'
			
			Phep cong cua 1 va 2--> `expr 1 + 2`

* Ví dụ:

	+ Phép cộng:
	
			$ expr 1 + 2
		
			3
			
			$ echo "Phep cong: 2 va 3 --> `expr 2 + 3`"
			
			Phep cong: 2 va 3 --> 5
		
	+ Phép trừ:
	
			$ expr 1 - 2
		
			-1
			
			$ echo "Phep tru: 2 va 3 --> `expr 2 - 3`"
			
			Phep tru: 2 va 3 --> -1
			
	+ Phép nhân:
	
			$ expr 3 \* 2
		
			6
		
			$ echo "Phep nhan: 2 va 3 --> `expr 2 \* 3`"
			
			Phep nhan: 2 va 3 --> 6
			
	+ Phép chia lấy nguyên:
	
			$ expr 10 / 2
			
			5
			
			$ echo "Phep chia lay nguyen: 5 va 3 --> `expr 5 / 3`"
			
			Phep chia lay nguyen: 5 va 3 --> 1
	
	+ Phép chia lấy dư:
	
			$ expr 10 % 2
			
			0
			
			$ echo "Phep chia lay du: 5 va 3 --> `expr 5 % 3`"
			
			Phep chia lay du: 5 va 3 --> 2
