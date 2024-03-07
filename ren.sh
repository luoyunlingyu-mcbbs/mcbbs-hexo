cd "$1"
for file in *.html; do
    filename=$(basename "$file")
    # 读取文件名并将其添加到文件的第一行
    sed -i "1i ;;;" "$file"
    sed -i "1s|^|{\"title\": \"$filename\"}\n|" "$file"
done
