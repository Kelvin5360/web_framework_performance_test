# Try to performance test all framework i interest to see which one i should use

Very simple test now, just every framework have an endpoint that respond Hello World with a timestamp. I use cryload to fire 10,000 request and time the result. I ran cryload 3 times and I took the third result for the app to warm itself up.

| Framework                         | Average per request (ms)  |
| -------------                     |:-------------:            |
| Crystal Pure HTTP                 | 0.098                     |
| Crystal Kemal (Sinatra like)      | 0.104                     |
| Express                           | 0.288                     |
| Rack puma MRI                     | 0.113                     |
| Rack puma JRuby                   | 0.117                     |
| Roda MRI                          | 0.130                     |
| Sinatra JRuby                     | 0.588                     |
| Sinatra MRI                       | 0.473                     |
| SpringBoot                        | 0.338                     |
| SparkJava                         | 0.117                     |
| Ratpack                           | 0.313                     |

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
Min: 0.066 ms
Max: 2.126 ms
Average: 0.098 ms

Requests Statistics:
Request p/s: 10162.704905537623
2xx requests 0
Non 2xx requests 10000
Total request made: 10000
Total time taken: 0.9839900000000035 seconds
```

## crystal_kemal
```
./cryload -s http://127.0.0.1:3000 -n 10000
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
Min: 0.075 ms
Max: 4.206 ms
Average: 0.104 ms

Requests Statistics:
Request p/s: 9617.576313063673
2xx requests 0
Non 2xx requests 10000
Total request made: 10000
Total time taken: 1.0397629999999973 seconds
```

## express_web
```
./cryload -s http://127.0.0.1:3000 -n 10000
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
Min: 0.202 ms
Max: 2.938 ms
Average: 0.288 ms

Requests Statistics:
Request p/s: 3469.5116662329674
2xx requests 0
Non 2xx requests 10000
Total request made: 10000
Total time taken: 2.882250000000008 seconds
```

## rack only puma
```
./cryload -s http://127.0.0.1:9292 -n 10000
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
Min: 0.082 ms
Max: 2.384 ms
Average: 0.113 ms

Requests Statistics:
Request p/s: 8879.283477340345
2xx requests 0
Non 2xx requests 10000
Total request made: 10000
Total time taken: 1.1262170000000213 seconds
```

## rack only JRuby
```
./cryload -s http://127.0.0.1:9292 -n 10000
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
Min: 0.079 ms
Max: 11.415 ms
Average: 0.117 ms

Requests Statistics:
Request p/s: 8517.37245873543
2xx requests 0
Non 2xx requests 10000
Total request made: 10000
Total time taken: 1.1740710000000043 seconds
```

## roda MRI puma
```
./cryload -s http://127.0.0.1:9292 -n 10000
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
Min: 0.097 ms
Max: 2.646 ms
Average: 0.13 ms

Requests Statistics:
Request p/s: 7709.434497560811
2xx requests 0
Non 2xx requests 10000
Total request made: 10000
Total time taken: 1.2971119999999872 seconds
```

## sinatra_web JRuby
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
Min: 0.387 ms
Max: 26.051 ms
Average: 0.588 ms

Requests Statistics:
Request p/s: 1701.4071317542632
2xx requests 0
Non 2xx requests 10000
Total request made: 10000
Total time taken: 5.877487999999941 seconds
```

## sinatra_web MRI

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
Min: 0.326 ms
Max: 3.529 ms
Average: 0.473 ms

Requests Statistics:
Request p/s: 2112.849845677463
2xx requests 0
Non 2xx requests 10000
Total request made: 10000
Total time taken: 4.732943999999966 seconds
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
Min: 0.127 ms
Max: 3.954 ms
Average: 0.338 ms

Requests Statistics:
Request p/s: 2961.963355181775
2xx requests 0
Non 2xx requests 10000
Total request made: 10000
Total time taken: 3.376138999999985 seconds
```

## sparkjava_web
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
Min: 0.064 ms
Max: 6.362 ms
Average: 0.117 ms

Requests Statistics:
Request p/s: 8550.743102329343
2xx requests 0
Non 2xx requests 10000
Total request made: 10000
Total time taken: 1.1694889999999953 seconds
```

## ratpack_web
```
./cryload -s http://127.0.0.1:5050 -n 10000
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
Min: 0.166 ms
Max: 19.772 ms
Average: 0.313 ms

Requests Statistics:
Request p/s: 3190.753451757098
2xx requests 0
Non 2xx requests 10000
Total request made: 10000
Total time taken: 3.1340559999999864 seconds
```
