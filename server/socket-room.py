import socket
import threading
import meo
import random

styles = [meo.screen.FORMAT_FONT_BLUE, meo.screen.FORMAT_FONT_RED, meo.screen.FORMAT_BG_RED, meo.screen.FORMAT_UNDERLINE,
        meo.screen.FORMAT_BG_SKY_BLUE, meo.screen.FORMAT_FONT_PRUPLE, meo.screen.FORMAT_BG_GREEN, meo.screen.FORMAT_BG_YELLOW]
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind(('0.0.0.0', 25506))
s.listen(1024)

clients = []

def broadcast(msg, ban=None):
    for c in clients:
        if ban and c in ban:
            continue
        c.send(bytes(msg, 'gbk'))

def tcplink(sock, addr):
    broadcast(f"{addr[0]} Join! \n")
    clients.append(sock)
    try:
        while True:
            data = sock.recv(1024)
            if data == 'exit' or not data:
                break
            for code in ['gbk', 'utf8']:
                try:
                    data = data.decode(code)
                    break
                except:pass
            if "flag" in data.strip().lower():
                sock.send(b"f1ag{0k_y0uFind_fIag}\n")
            try:
                msg = f"{addr[0]}: {data}"
                msg = meo.screen.sformat(msg, *random.sample(styles, random.randint(1, len(styles))))
                print(msg)
                broadcast(msg, [sock])
                sock.send(b"sending...\n")
            except:
                sock.send(b"fail! \n")
    except:
        clients.remove(sock)
        sock.close()
        broadcast(f"{addr[0]} Leave! \n")


while True:
    c, addr = s.accept()
    c.send("Link Start! \n".encode('gbk'))
    t = threading.Thread(target=tcplink, args=(c, addr))
    t.start()
    # t = Listener(c, addr)
    # t.start()
