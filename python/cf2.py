from concurrent import futures
import math
import time
import sys
import random

def calc(val):
#    time.sleep(1)
    random_int = random.randint(1,10)
#    print("Random time:", random_int)
    time.sleep(random_int)
    result = math.sqrt(float(val))
#    result = val**val
    return val, result

def use_threads(num, values):
    with futures.ThreadPoolExecutor(num) as tex:
        tasks = [tex.submit(calc, value) for value in values]
        for f in futures.as_completed(tasks):
            yield f.result()

def use_processes(num, values):
    with futures.ProcessPoolExecutor(num) as pex:
        tasks = [pex.submit(calc, value) for value in values]
        for f in futures.as_completed(tasks):
            yield f.result()

def main(workers, values):
    print(f"Using {workers} workers for {len(values)} values")
    print('Using threads:')
    for val, result in use_threads(workers, values):
        print(f"{val} {result:.4f}")
    print('Using process:')
    for val, result in use_processes(workers, values):
        print(f"{val} {result:.4f}")

if __name__ == '__main__':
    workers = 3
    values = list(range(1, 6)) # 1...5
#    print("length of argv :", len(sys.argv))
    if len(sys.argv) == 2:
        workers = int(sys.argv[1])
    elif len(sys.argv) == 3:
        workers = int(sys.argv[1])
        value = int(sys.argv[2])
        values = list(range(1, value+1)) # 1...5
    elif len(sys.argv) > 3:
        print('Too many arguments')
        exit()
    main(workers, values)

