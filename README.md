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

Details [here](https://github.com/antonmi/node_vs_eventmachine/blob/master/evma_httpserver/evma_httpserver.rb)


## node.js http server
