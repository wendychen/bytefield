# bytefield learning log

## installation

npm install -g bytefield-svg


vim a.edn
bytefield-svg -s a.edn -o a.svg
explorer.exe a.svg

先做一個.edn圖 編譯 看結果


之後可以了 開5個新.edn:

vim b.edn c.edn d.edn e.edn f.edn

再來是Grok做的bash script, 一次編譯這5個.edn完成:

cat > convert_bytefield.sh << 'EOF'
#!/bin/bash

echo "=== bytefield-svg Batch Converter ==="

for file in "$@"; do
    if [ -f "$file.edn" ]; then
        echo "Converting: $file.edn → $file.svg"
        bytefield-svg -s "$file.edn" -o "$file.svg"
    else
        echo "Warning: $file.edn not found"
    fi
done

echo "Done!"
EOF

再來是改權限:

chmod +x convert_bytefield.sh

再來執行:

./convert_bytefield.sh {b..f}

接著就explorer.exe 一個一個打開. 哦, 其實這部也可以寫到bash script裡面.

explorer.exe b.svg
explorer.exe c.svg
explorer.exe d.svg
explorer.exe e.svg
explorer.exe f.svg

