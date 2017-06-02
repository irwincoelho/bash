#!/bin/bash

title="System Info for"
RIGHT_NOW=$(date +"%x %r %Z")
TIME_STAMP="Updated on $RIGHT_NOW by $USER"

# Functions

system_info()
{
	return
}

show_uptime()
{
	cat<<_UPTIME_
	<h2>System Uptime</h2>
	<pre>$(uptime)</pre>
_UPTIME_
	return
}

drive_space()
{
	
	return
}

home_space()
{
	return
}

#Main

cat << _EOF_
<!doctype html>
<html>
	<head>
		<title>$title $HOSTNAME</title>
	</head>
	<body>
		<h1>$title $HOSTNAME</h1>
		<p>$TIME_STAMP</p>
		$(system_info)
		$(show_uptime)
		$(drive_space)
		$(home_space)
	</body>
</html>
_EOF_
