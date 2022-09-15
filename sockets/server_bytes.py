import socket
import pickle

# HEADER - defines how long a message is
HEADERSIZE = 10


HOST = "localhost"  # Private local IP address
PORT = 9099  # you can choose any port

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.bind((HOST, PORT))

server.listen(5)  # accept only 5 connections, refuse the rest

while True:
    communication_socket, address = server.accept()
    # Note: communication_socket is NOT the same as server
    print(f"Connected to {address}")

    message = communication_socket.recv(1024)  # argument is buffer size
    print(f"Message from client: {message.decode('utf-8')}")

    d = {1: "Hey", 2: "There"}
    message_send = pickle.dumps(d)  # this is already encoded
    message_send = f"{len(message_send):<{HEADERSIZE}}".encode("utf-8") + message_send
    communication_socket.send(message_send)

    print("All done.")
    communication_socket.close()
    print(f"Socket closed.")
    break  # end program
