#!/usr/bin/env ruby
require 'sinatra/base'
require 'traffic_light'

class TrafficLightServer < Sinatra::Base
  configure do
    set :traffic, TrafficLight.new
    settings.traffic.blind = true
  end

  get '/set-color/:colors' do
    settings.traffic.setColors params[:colors]
  end

  run! if app_file == $0
end
