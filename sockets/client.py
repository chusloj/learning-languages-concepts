import socket

"""
Build a client using a TCP socket with a
target host IP address and a target host port.
"""

HEADERSIZE = 10

HOST = "192.168.4.29"  # Host of the server (Target host)
PORT = 9090  # Target port on server

socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
socket.connect((HOST, PORT))

socket.send("Hello World!".encode("utf-8"))

# msg = socket.recv(8)
# while msg:
#     print(msg.decode('utf-8'))
#     msg = socket.recv(8)

byte_size = 16  # or 1024

full_msg = ""
new_msg = True
while True:
    msg = socket.recv(byte_size)
    if new_msg:
        print(
            f"new message header: {msg[:HEADERSIZE]}"
        )  # length of the message is indicated in the header, see server.py
        msglen = int(msg[:HEADERSIZE])
        print(f"new message length: {msglen}")
        new_msg = False

    full_msg += msg.decode("utf-8")

    if (
        len(full_msg) - HEADERSIZE == msglen
    ):  # if you've read in the length of the message body + length of the header, that's the whole message
        print("Full message received")
        print(full_msg[:HEADERSIZE])  # header
        print(full_msg[HEADERSIZE:])  # message body
        new_msg = True
        full_msg = ""

        print("\n")
