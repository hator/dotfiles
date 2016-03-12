#!/bin/bash

case "x$1" in
	xenable|x)
		val=false
		;;
	xdisable)
		val=true
		;;
	x*)
		echo "Usage: $0 [ enable | disable ]" >&2
		exit 1
		;;
esac


remote_name=$2
[ -z "$remote_name" ] && remote_name=origin
remote=$(git config remote.${remote_name}.url)
host=${remote/:*}
dir=${remote/*:}
prop=receive.denyNonFastforwards

ssh $host "cd $dir && git config $prop $val && echo '$dir: $prop = $val'"
