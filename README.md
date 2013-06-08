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

See details [here](https://github.com/antonmi/node_vs_eventmachine/tree/master/evma_httpserver).


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

See details [here](https://github.com/antonmi/node_vs_eventmachine/tree/master/node).

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

See details [here](https://github.com/antonmi/node_vs_eventmachine/tree/master/node).

With `--threaded` option:

`Requests per second:    2166.96 [#/sec] (mean)`

## Sinatra application.
### Application
The [application](https://github.com/antonmi/node_vs_eventmachine/blob/master/sinatra/app.rb):

``` ruby
require 'sinatra'

set :server, :thin
set :host, '127.0.0.1'
set :port, 5002
set :logging, false
set :threaded, false #this option set to true by default
set :environment, 'production'

get '/' do
  "Hello world"
end
```

### Results

`Requests per second:    2895.68 [#/sec] (mean))`

With `set :threaded, true`:

`Requests per second:    977.92 [#/sec] (mean)`

See details [here](https://github.com/antonmi/node_vs_eventmachine/tree/master/sinatra).

## AsyncSinatra application.
### Application
The [application](https://github.com/antonmi/node_vs_eventmachine/blob/master/async_sinatra/app.rb):

``` ruby
require 'sinatra/async'

class AsyncTest < Sinatra::Base
  register Sinatra::Async

  set :threaded, false
  set :server, :thin
  set :host, '127.0.0.1'
  set :port, 5003

  aget '/' do
    body('Hello world')
  end

  run!
end
```

### Results

`Requests per second:    3285.19 [#/sec] (mean)`

See details [here](https://github.com/antonmi/node_vs_eventmachine/tree/master/async_sinatra).


## Express.js application.
### Application
The [application](https://github.com/antonmi/node_vs_eventmachine/blob/master/express_js/app.js):

``` javascript
var express = require('express');
var app = express();
app.get('/', function(req, res){
    res.send('Hello World')
});

app.listen(6001);
```

### Results

`Requests per second:    5222.03 [#/sec] (mean)`

See details [here](https://github.com/antonmi/node_vs_eventmachine/tree/master/express_js).
