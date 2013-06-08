```
antonmi@antonmi-note ~ $ ab -n 100000 -c 100 http://127.0.0.1:6001/
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
Server Port:            6001

Document Path:          /
Document Length:        11 bytes

Concurrency Level:      100
Time taken for tests:   19.150 seconds
Complete requests:      100000
Failed requests:        0
Write errors:           0
Total transferred:      16900000 bytes
HTML transferred:       1100000 bytes
Requests per second:    5222.03 [#/sec] (mean)
Time per request:       19.150 [ms] (mean)
Time per request:       0.191 [ms] (mean, across all concurrent requests)
Transfer rate:          861.84 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.1      0       4
Processing:     2   19   2.8     19      45
Waiting:        2   19   2.8     19      45
Total:          6   19   2.8     19      45

Percentage of the requests served within a certain time (ms)
  50%     19
  66%     20
  75%     20
  80%     21
  90%     23
  95%     25
  98%     27
  99%     28
 100%     45 (longest request)
```