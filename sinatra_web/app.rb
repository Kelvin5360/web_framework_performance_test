require 'sinatra'

set :logging, false

get '/' do
  "Hello world! The time is #{Time.now}"
end
