```
antonmi@antonmi-note ~ $ ab -n 100000 -c 100 http://127.0.0.1:5000/
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


Server Software:
Server Hostname:        127.0.0.1
Server Port:            5000

Document Path:          /
Document Length:        11 bytes

Concurrency Level:      100
Time taken for tests:   6.798 seconds
Complete requests:      100000
Failed requests:        0
Write errors:           0
Total transferred:      7600000 bytes
HTML transferred:       1100000 bytes
Requests per second:    14710.01 [#/sec] (mean)
Time per request:       6.798 [ms] (mean)
Time per request:       0.068 [ms] (mean, across all concurrent requests)
Transfer rate:          1091.76 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.2      0       4
Processing:     2    7   1.8      7      18
Waiting:        1    6   1.7      7      18
Total:          4    7   1.8      7      18

Percentage of the requests served within a certain time (ms)
  50%      7
  66%      7
  75%      7
  80%      7
  90%      8
  95%      9
  98%     13
  99%     16
 100%     18 (longest request)
```