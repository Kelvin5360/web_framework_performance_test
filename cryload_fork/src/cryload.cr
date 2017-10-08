require "./cryload/*"
require "http"
require "colorize"
require "option_parser"

module Cryload
  # LoadGenerator is the main class in Cryload. It's responsible for generating
  # the requests and other major stuff.
  class LoadGenerator
    # LoadGenerator accepts two params.
    def initialize(@host : String, @request_number : Int32)
      Cryload.create_stats @request_number
      # Cryload.create_execution_handler
      channel = generate_request_channel
      spawn_receive_loop channel
    end

    # Generates a Channel for asynchronously sending HTTP requests.
    def generate_request_channel
      channel = Channel(Nil).new
      spawn_request_loop channel
      channel
    end

    # Spawns the main loop which creates the HTTP client. The HTTP clients
    # sends HTTP::get requests to the specified host. It doesn't block
    # the main program and send the completion of the request to channel.
    def spawn_request_loop(channel)
      uri = parse_uri
      client = create_http_client uri
      spawn do
        loop do
          if Cryload.stats.requests.size < Cryload.stats.request_number
            spawn do
              create_request.send(client, uri)
              Cryload.stats.response_received
              channel.send nil
            end
          end

        end
      end
    end

    # Spawns the receiver loop which listens the send events from channel.
    # This loop is also responsible for checking the logs and gathering stats
    # about all the completed requests.
    def spawn_receive_loop(channel)
      loop do
        ExecutionHandler.check
        channel.receive
      end
    end

    # Parses the host string and converts it to an URI
    private def parse_uri
      uri = URI.parse @host
    end

    # Creates the HTTP client
    private def create_http_client(uri)
      HTTP::Client.new uri.host.not_nil!, port: uri.port, tls: uri.scheme == "https"
    end

    # Creates a new request to the given URI
    private def create_request
      request = Request.new
      Cryload.stats << request
      request
    end
  end
end

Signal::INT.trap {
  Cryload::Logger.log_final
  exit
}

Cryload::Cli.new
