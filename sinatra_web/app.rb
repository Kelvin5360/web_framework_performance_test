require 'sinatra'

get '/' do
  "Hello world! The time is #{Time.now}"
end
