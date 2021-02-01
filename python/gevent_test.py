import gevent
from gevent import socket
#from gevent import monkey; monkey.patch_all()
#import socket

hosts = ['www.crappytaxidermy.com', 'www.walterpottertaxidermy.com', 'www.sony.co.jp', 'www.moriousa.com']
jobs = [gevent.spawn(gevent.socket.gethostbyname, host) for host in hosts]
gevent.joinall(jobs, timeout=5)
for job in jobs:
    print(job.value)
