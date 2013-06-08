require 'sinatra'

set :server, :thin
set :host, '127.0.0.1'
set :port, 5002
set :logging, false
set :threaded, false
set :environment, 'production'

get '/' do
  "Hello world"
end
