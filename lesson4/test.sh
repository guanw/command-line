# stress: generate load for testing

-t N # time out
-c N # start N workers, endless loop on sqrt() / CPU
-i N # start N workers, endless loop on sync() / IO
-m N # start N workers, endless loop on malloc()/free() / Memory
-d N # start N workers, endless loop on write()/unlink() / Disk

stress --cpu 8 --io 4 --vm 2 --vm-bytes 128M --timeout 60s



# kill pid

# killall name

# ctrl + c send sigint signal, the ps will be terminated
# ctrl + z send sigtstp signal, the ps will be put to background and hang


& 在后台运行
当SSH/terminal关闭后依旧会被终止

jobs 显示从当前终端启动的命令

fg 把后台第一个进程变前台
    fg %1 # 把一号job放到前台运行

bg继续被挂起的后台进程:
    stress -c 1
    Ctzl + z
    bg
