xbacklight -set 60


# list the pcm data
# pacmd list-sinks
pacmd set-default-sink 3

function myfindgrep(){
	find . -name $1 | xargs -n 1 grep -H $2
}

function gencscope(){
	find . -name '*.h' -o -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.hpp' > cscope.files
	cscope -Rb
	ctags -R *
}

alias findgrep=myfindgrep
echo "mount /dev/sdb7 /mnt"
