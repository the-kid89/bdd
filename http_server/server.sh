#! /bin/sh
{
netcat -lp 8080 -e ./bashttpd
} || {
rm -f /tmp/f; mkfifo /tmp/f
cat /tmp/f | ./bashttpd | nc -l 127.0.0.1 8080 > /tmp/f
}
