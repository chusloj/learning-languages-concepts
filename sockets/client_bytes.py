import socket
import pickle

HEADERSIZE = 10

HOST = "localhost"  # Host of the server (Target host)
PORT = 9099  # Target port on server

socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
socket.connect((HOST, PORT))

socket.send("Hello World!".encode("utf-8"))

byte_size = 16  # or 1024

full_msg = b""
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

    full_msg += msg

    if (
        len(full_msg) - HEADERSIZE == msglen
    ):  # if you've read in the length of the message body + length of the header, that's the whole message
        print("Full message received")
        print(
            full_msg[:HEADERSIZE].decode("utf-8")
        )  # header, decoding now happens here

        d = pickle.loads(full_msg[HEADERSIZE:])  # message body (pickled)
        print(d)

        new_msg = True
        full_msg = b""

        print("\n")
