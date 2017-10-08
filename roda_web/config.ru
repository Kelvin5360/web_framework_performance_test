require "roda"

class App < Roda
  route do |r|
    # GET / request
    r.root do
      "Roda Hello world! The time is #{Time.now}"
    end

  end
end

run App.freeze.app
