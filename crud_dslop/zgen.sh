#!/bin/sh

SRC="dslop.html"
TPL="dslop-w-table.template.html"
OUT="dslop-w-table.html"
TMP=$(mktemp)

# 1. Copy toàn bộ template tới TMP
cp "$TPL" "$TMP"

# 2. Lấy các dòng trong <pre>...</pre> từ dslop.html, bỏ dòng header
sed -n '/<pre/,/<\/pre>/p' "$SRC" \
    | sed '1d;$d' \
    | sed '1d' > /tmp/dslop_pre_data.txt
#               ^^^ bỏ dòng đầu (hoten,quancu,phuongmoi)

# 3. Tạo bảng row và chèn vào cuối TMP (ngay trước </table>)
while IFS= read -r line; do
    # trim spaces
    clean=$(echo "$line" | sed 's/^[ \t]*//;s/[ \t]*$//')

    hoten=$(echo "$clean" | cut -d',' -f1)
    quancu=$(echo "$clean" | cut -d',' -f2)
    phuongmoi=$(echo "$clean" | cut -d',' -f3)

    echo "  <tr><td>$hoten</td><td>$quancu</td><td>$phuongmoi</td></tr>" >> "$TMP"
done < /tmp/dslop_pre_data.txt

# 4. Đóng bảng
echo "</table>" >> "$TMP"

# 5. Xuất file cuối
mv "$TMP" "$OUT"

echo "Generated $OUT"
