require "kemal"

# Matches GET "http://host:port/"
get "/" do
  "Hello world! The time is #{Time.now}"
end

Kemal.run
