cat *.pgn > /dev/null

# version 1
cat ./lesson3/ChessData-master/*.pgn | grep "Result" | sort | uniq -c

# uniq -c 统计独立行出现次数，仅对已排序的文本有效

# version 2
cat ./lesson3/ChessData-master/*.pgn | grep "Result" | awk '{ split($0, a, "-"); res = substr(a[1], length(a[1]), 1); if (res == 1) white++; if (res == 0) black++; if (res == 2) draw++;} END { print white+black+draw, white, black, draw }'

# $0 # 输入行 '[Result "1/2-1/2"]'
# split($0, a, "-") # 按 - 分割 a=['[Result "1/2', '1/2"]']
# substr(a[1], length(a[1]), 1) # 取出最后一个字符

# version 3 parellel
find ./lesson3/ChessData-master -type f -name '*.pgn' | xargs -n1 -P8 mawk '/Result/ { split($0, a, "-"); res = substr(a[1], length(a[1]), 1); if (res == 1) white++; if (res == 0) black++; if (res == 2) draw++ } END { print white+black+draw, white, black, draw }' | mawk '{games += $1; white += $2; black += $3; draw += $4; } END { print games, white, black, draw }'
