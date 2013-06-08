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
