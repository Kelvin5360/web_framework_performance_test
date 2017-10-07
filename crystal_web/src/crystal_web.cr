require "./crystal_web/*"
require "http/server"

module CrystalWeb

end

server = HTTP::Server.new(8080) do |ctx|
  puts "got a http request"
  ctx.response.content_type = "text/plain"
  ctx.response.print "Hello world! The time is #{Time.now}"
end

puts "Listening on http://127.0.0.1:8080"
server.listen
