run ->(env) { [200, {"Content-Type" => "text/html"}, ["Hello world! The time is #{Time.now}"]] }
