from concurrent.futures import ThreadPoolExecutor
import time


def worker(number):
    print(f"Calculating result for number {number}")
    time.sleep(2)
    return number**2


pool = ThreadPoolExecutor(max_workers=9e99)  # thread pool
work1 = pool.submit(worker, 7)
work2 = pool.submit(worker, 5)
work3 = pool.submit(worker, 9)
work4 = pool.submit(worker, 18)
work5 = pool.submit(worker, 22)
work6 = pool.submit(worker, 4)


if work3.done():
    print(work3.result())
else:
    print("No results yet for work3.")

print(work6.result())
# print("Hello world")

pool.shutdown()

# can't submit new tasks to the pool after the pool has shut down
work7 = pool.submit(worker, 15)
