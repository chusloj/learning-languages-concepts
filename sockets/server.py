import socket
import time

"""
Build a server using a TCP socket.
"""

# HEADER - defines how long a message is
HEADERSIZE = 10


HOST = "192.168.4.29"  # Private local IP address
PORT = 9090  # you can choose any port

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.bind((HOST, PORT))

server.listen(5)  # accept only 5 connections, refuse the rest

while True:
    communication_socket, address = server.accept()
    # Note: communication_socket is NOT the same as server
    print(f"Connected to {address}")

    message = communication_socket.recv(1024)  # argument is buffer size
    print(f"Message from client: {message.decode('utf-8')}")

    message_send = "Message received!"
    message_send = f"{len(message_send):<{HEADERSIZE}}" + message_send
    communication_socket.send(message_send.encode("utf-8"))

    time.sleep(3)

    new_msg_counter = 1
    while new_msg_counter <= 10:
        message_send = f"This is new message {new_msg_counter}"
        message_send = f"{len(message_send):<{HEADERSIZE}}" + message_send
        communication_socket.send(message_send.encode("utf-8"))
        new_msg_counter += 1
        time.sleep(1)

    print("All done.")
    communication_socket.close()
    print(f"Connection with {address} ended.")

    break  # end server program
