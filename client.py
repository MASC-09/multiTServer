import socket
import sys
import os

HOST = "localhost"
PORT = 8989

message = "/home/mike/Uni/SistemasOperativos/multiTServer/testfiles" + sys.argv[1]+".c\n"
# os.system(message)

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
    s.connect((HOST, PORT))
    byt = message.encode()
    os.system(byt)
    s.send(byt)