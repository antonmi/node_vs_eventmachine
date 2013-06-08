##Comparison of http servers and framework based on Node.js and EventMachine


## evma_httpserver
[evma_httpserver](https://github.com/eventmachine/evma_httpserver)

### Application
The [application](https://github.com/antonmi/node_vs_eventmachine/blob/master/evma_httpserver/evma_httpserver.rb):

``` ruby
require 'eventmachine'
require 'evma_httpserver'

class TestServer < EM::Connection
  include EM::HttpServer

  def post_init
    super
    no_environment_strings
  end

  def process_http_request
    response = EM::DelegatedHttpResponse.new(self)
    response.status = 200
    response.content_type 'text/html'
    response.content = 'Hello World'
    response.send_response
  end
end

EM.run{
  EM.start_server '127.0.0.1', 5000, TestServer
}
```

### Results

`Requests per second:    14710.01 [#/sec] (mean)`

See details [here](https://github.com/antonmi/node_vs_eventmachine/tree/master/evma_httpserver)


## node.js http server
### Application
The [application](https://github.com/antonmi/node_vs_eventmachine/blob/master/node/node.js):

``` javascript
var http = require('http');

var server = http.createServer(function (request, response) {
    response.writeHead(200, {"Content-Type": "text/html"});
    response.end("Hello World");
});

server.listen(6000);
```

### Results

`Requests per second:    7869.49 [#/sec] (mean)`

See details [here](https://github.com/antonmi/node_vs_eventmachine/tree/master/node)

## Thin server. Simple Rack application
### Application
The [application](https://github.com/antonmi/node_vs_eventmachine/blob/master/thin/config.ru):

``` ruby
class App
  def call(env)
    [200, {'Content-Type' => 'text/html'}, 'Hello world']
  end
end

run App.new


#thin -R config.ru start -p5001
```

### Results

`Requests per second:    7667.10 [#/sec] (mean)`

See details [here](https://github.com/antonmi/node_vs_eventmachine/tree/master/node)

With `--threaded` option:

`Requests per second:    2166.96 [#/sec] (mean)`


