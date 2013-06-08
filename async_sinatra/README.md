```
antonmi@antonmi-note ~ $ ab -n 100000 -c 100 http://127.0.0.1:5003/
This is ApacheBench, Version 2.3 <$Revision: 655654 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking 127.0.0.1 (be patient)
Completed 10000 requests
Completed 20000 requests
Completed 30000 requests
Completed 40000 requests
Completed 50000 requests
Completed 60000 requests
Completed 70000 requests
Completed 80000 requests
Completed 90000 requests
Completed 100000 requests
Finished 100000 requests


Server Software:        thin
Server Hostname:        127.0.0.1
Server Port:            5003

Document Path:          /
Document Length:        11 bytes

Concurrency Level:      100
Time taken for tests:   30.440 seconds
Complete requests:      100000
Failed requests:        0
Write errors:           0
Total transferred:      15200000 bytes
HTML transferred:       1100000 bytes
Requests per second:    3285.19 [#/sec] (mean)
Time per request:       30.440 [ms] (mean)
Time per request:       0.304 [ms] (mean, across all concurrent requests)
Transfer rate:          487.65 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.1      0       4
Processing:    18   30   3.5     31      45
Waiting:       16   28   3.7     29      44
Total:         22   30   3.5     31      47

Percentage of the requests served within a certain time (ms)
  50%     31
  66%     32
  75%     33
  80%     33
  90%     34
  95%     34
  98%     36
  99%     37
 100%     47 (longest request)
```