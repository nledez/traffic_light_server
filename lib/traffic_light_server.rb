require 'sinatra/base'
require 'traffic_light'

module Sinatra
  class Base
      class << self
          alias old_quit! quit!
          def quit!(server, handler_name)
              # self.closeSerial!
              # $stderr.puts "\n== Fuck off asshole" unless handler_name =~/cgi/i
              old_quit!(server, handler_name)
          end
      end
  end
end

class TrafficLightServer < Sinatra::Base
  configure do
    set :traffic, TrafficLight.new
    set :message, ""
    set :last_color, 0

    # settings.message = self.setColors 0
    # $stderr.puts settings.message
  end

  # class << self
    def closeSerial!
      settings.traffic.close!
    end

    def setColors(colors)
      puts "0"
      settings.last_color = colors
      puts "1"
      settings.traffic.setColors colors
      puts "2"
      settings.message = settings.traffic.message
      puts "3"
      # settings.message
    end
  # end

  get '/status' do
    settings.message
  end

  get '/fuck' do
    settings.message = "Fuck !!!"
  end

  get '/set-color/:colors' do
    setColors(params[:colors]).strip
  end

  run! if app_file == $0
end
