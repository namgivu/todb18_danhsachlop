#!/bin/sh

# ref https://chatgpt.com/share/693c20ca-a618-800f-8124-c2d185eb9e24

file="dslop.html"
tmp=$(mktemp)

# B1: lấy toàn bộ file trừ phần <table>...</table>
#    (xóa nguyên block table cũ)
sed '/<table>/,/<\/table>/d' "$file" > "$tmp"

# B2: thêm lại thẻ <table> mở
echo "<table>" >> "$tmp"

# B3: lấy list trong <pre> … </pre>
sed -n '/<pre/,/<\/pre>/p' "$file" \
    | sed '1d;$d' > /tmp/pre_lines.txt

# B4: tạo các row mới
while IFS= read -r l; do
    l=$(echo "$l" | sed 's/^[ \t]*//;s/[ \t]*$//')

    hoten=$(echo "$l" | cut -d',' -f1)
    quancu=$(echo "$l" | cut -d',' -f2)
    phuongmoi=$(echo "$l" | cut -d',' -f3)

    echo "  <tr><td>$hoten</td><td>$quancu</td><td>$phuongmoi</td></tr>" >> "$tmp"
done < /tmp/pre_lines.txt

# B5: đóng bảng
echo "</table>" >> "$tmp"

# B6: ghi đè file gốc
mv "$tmp" "$file"
