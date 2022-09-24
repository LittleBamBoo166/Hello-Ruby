# Nhập 3 cạnh tam giác, kiểm tra điều kiện có phải 3 cạnh tam giác hay ko? nếu đúng --> tính chu vi, diên tích --> in ra
puts 'Canh so 1: '
side1 = gets.chomp.to_f
while side1 <= 0
    puts 'Gia tri nhap vao khong hop le'
    puts 'Canh so 1: '
    side1 = gets.chomp.to_f
end

puts 'Canh so 2: '
side2 = gets.chomp.to_f
while side2 <= 0
    puts 'Gia tri nhap vao khong hop le'
    puts 'Canh so 2: '
    side2 = gets.chomp.to_f
end

puts 'Canh so 3: '
side3 = gets.chomp.to_f
while side3 <= 0
    puts 'Gia tri nhap vao khong hop le'
    puts 'Canh so 3: '
    side3 = gets.chomp.to_f
end

def chuVi(a, b, c)
    puts 'Chu vi tam giac: %.2f' % [a.to_f + b.to_f + c.to_f]
end

def dienTich(a, b, c)
    p = (a + b + c) / 2
    puts 'Dien tich tam giac: %.2f' % [Math.sqrt(p * (p - a) * (p - b) * (p - c))]
end

if ((side1 + side2 <= side3) || (side 1 + side3 <= side2) || (side2 + side3 <= side1))
    puts 'Khong phai 3 canh tam giac'
else
    puts chuVi(side1, side2, side3)
    puts dienTich(side1, side2, side3)
end