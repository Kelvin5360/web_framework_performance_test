module Cryload
  # Respresents an HTTP::get request
  class Request
    @start_time : Time
    @end_time : Time
    @status_code : Int32

    def initialize
      @status_code = 0
      @start_time = Time.now
      @end_time = Time.now
    end

    def send(http_client, uri)
      @start_time = Time.now
      puts "sending request"
      response = http_client.get uri.full_path
      puts "got a respons"
      @end_time = Time.now
      @status_code = response.status_code
    end

    # Calculates time taken for the request (in miliseconds)
    def time_taken
      (@end_time - @start_time).to_f * 1000.0
    end

    # Checks if response status_code is in between 200.300 meaning
    # the request was successful
    def is_ok?
      200 < @status_code < 300
    end
  end
end
