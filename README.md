# Try to performance test all framework i interest to see which one i should use

Very simple test now, just every framework have an endpoint that respond Hello World with a timestamp. I use cryload to fire 10,000 request and time the result.

## crystal_web
```
./cryload -s http://127.0.0.1:8080 -n 10000
Preparing to make it CRY for 10000 requests!
Total request made: 1000
Total request made: 2000
Total request made: 3000
Total request made: 4000
Total request made: 5000
Total request made: 6000
Total request made: 7000
Total request made: 8000
Total request made: 9000
Completed All Requests!
-------------------------------

Time taken per request:
Min: 0.083 ms
Max: 6.339 ms
Average: 0.155 ms

Requests Statistics:
Request p/s: 6432.568350863188
2xx requests 0
Non 2xx requests 10000
Total request made: 10000
Total time taken: 1.5545889999999918 seconds
```
## sinatra_web

```
./cryload -s http://127.0.0.1:4567 -n 10000
Preparing to make it CRY for 10000 requests!
Total request made: 1000
Total request made: 2000
Total request made: 3000
Total request made: 4000
Total request made: 5000
Total request made: 6000
Total request made: 7000
Total request made: 8000
Total request made: 9000
Completed All Requests!
-------------------------------

Time taken per request:
Min: 0.419 ms
Max: 7.246 ms
Average: 0.576 ms

Requests Statistics:
Request p/s: 1735.0577262380805
2xx requests 0
Non 2xx requests 10000
Total request made: 10000
Total time taken: 5.763497000000001 seconds
```

## springboot_web

```
./cryload -s http://127.0.0.1:8080 -n 10000
Preparing to make it CRY for 10000 requests!
Total request made: 1000
Total request made: 2000
Total request made: 3000
Total request made: 4000
Total request made: 5000
Total request made: 6000
Total request made: 7000
Total request made: 8000
Total request made: 9000
Completed All Requests!
-------------------------------

Time taken per request:
Min: 0.276 ms
Max: 19.879 ms
Average: 0.772 ms

Requests Statistics:
Request p/s: 1294.7043613799622
2xx requests 0
Non 2xx requests 10000
Total request made: 10000
Total time taken: 7.723770999999945 seconds
```

##sparkjava_web
```
./cryload -s http://127.0.0.1:4567 -n 10000
Preparing to make it CRY for 10000 requests!
Total request made: 1000
Total request made: 2000
Total request made: 3000
Total request made: 4000
Total request made: 5000
Total request made: 6000
Total request made: 7000
Total request made: 8000
Total request made: 9000
Completed All Requests!
-------------------------------

Time taken per request:
Min: 0.108 ms
Max: 12.072 ms
Average: 0.325 ms

Requests Statistics:
Request p/s: 3078.809202807005
2xx requests 0
Non 2xx requests 10000
Total request made: 10000
Total time taken: 3.2480090000000073 seconds
```
