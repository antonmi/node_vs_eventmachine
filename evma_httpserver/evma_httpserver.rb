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