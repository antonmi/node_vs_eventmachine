`
antonmi@antonmi-note ~ $ ab -n 100000 -c 100 http://127.0.0.1:6000/
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
Server Port:            6000

Document Path:          /
Document Length:        11 bytes

Concurrency Level:      100
Time taken for tests:   12.707 seconds
Complete requests:      100000
Failed requests:        0
Write errors:           0
Total transferred:      11100000 bytes
HTML transferred:       1100000 bytes
Requests per second:    7869.49 [#/sec] (mean)
Time per request:       12.707 [ms] (mean)
Time per request:       0.127 [ms] (mean, across all concurrent requests)
Transfer rate:          853.04 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.1      0       2
Processing:     1   13   2.3     12      25
Waiting:        1   13   2.3     12      25
Total:          4   13   2.3     12      25

Percentage of the requests served within a certain time (ms)
  50%     12
  66%     14
  75%     14
  80%     14
  90%     15
  95%     18
  98%     19
  99%     20
 100%     25 (longest request)
`