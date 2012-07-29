require 'rack/test'

# set :environment, :test

describe 'Traffic light server' do
  include Rack::Test::Methods

  def app
    require 'traffic_light_server'
    run TrafficLightServer
  end

  it "Set colors" do
    get '/set-color/0'
    last_response.should be_ok
    last_response.body.should == "0 -> ---"

    get '/set-color/1'
    last_response.should be_ok
    last_response.body.should == "1 -> G--"

    get '/set-color/2'
    last_response.should be_ok
    last_response.body.should == "2 -> -O-"

    get '/set-color/4'
    last_response.should be_ok
    last_response.body.should == "4 -> --R"
  end
end