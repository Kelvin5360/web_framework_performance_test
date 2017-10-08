module Cryload
  # Responsible for handling the execution.
  # If the request cycle is in progress it continues logging.
  # If the request cycle is complete it logs the final stats.
  # Otherwise if an int signal received the logs the ongoing final
  # stats and terminates the execution
  class ExecutionHandler
    # The main check for execution
    def self.check
      if Cryload.stats.total_response_count == Cryload.stats.request_number
        Logger.log_final
        exit
      elsif (Cryload.stats.total_response_count % Cryload.stats.ongoing_check_number == 0) &&
            Cryload.stats.total_response_count != Cryload.stats.request_number &&
            Cryload.stats.total_response_count != 0
        Logger.log_ongoing
      end
    end
  end
end
