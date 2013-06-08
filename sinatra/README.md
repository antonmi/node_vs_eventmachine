```
antonmi@antonmi-note ~ $ ab -n 100000 -c 100 http://127.0.0.1:5002/
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
Server Port:            5002

Document Path:          /
Document Length:        11 bytes

Concurrency Level:      100
Time taken for tests:   34.534 seconds
Complete requests:      100000
Failed requests:        0
Write errors:           0
Total transferred:      24700000 bytes
HTML transferred:       1100000 bytes
Requests per second:    2895.68 [#/sec] (mean)
Time per request:       34.534 [ms] (mean)
Time per request:       0.345 [ms] (mean, across all concurrent requests)
Transfer rate:          698.47 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.1      0       6
Processing:     8   34   3.9     35      64
Waiting:        5   31   4.1     32      61
Total:          9   35   3.9     35      64

Percentage of the requests served within a certain time (ms)
  50%     35
  66%     37
  75%     37
  80%     37
  90%     38
  95%     39
  98%     42
  99%     44
 100%     64 (longest request)
```