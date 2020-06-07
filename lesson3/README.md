brew install mawk

# `xargs -n1 -P8` 效果

mawk ... ./1.pgn &
mawk ... ./2.pgn &
...
mawk ... ./8.pgn &
