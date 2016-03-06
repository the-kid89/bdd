while true; do { echo -e 'HTTP/1.1 200 OK\r\n'; cat specifications.html; } | nc -l 8080; done
