# pleasewaite.rb
require 'sinatra'
set :bind, '0.0.0.0'

get '/' do
  'Hello world!'
end

get '/wait/:waittime' do |waittime|
  if waittime.to_i > 60000
   return "Wait time exceeds typical http request time of 60 seconds. Please lower wait time."
  else
    wait_seconds = "#{waittime}".to_i/1000.to_f
    sleep(wait_seconds)
    return "#{wait_seconds} seconds" 
  end
end
