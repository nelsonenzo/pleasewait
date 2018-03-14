# pleasewaite.rb
require 'sinatra'
require 'resolv'

set :bind, '0.0.0.0'

get '/' do
  'Hello world!'
end

get '/wait/:waittime' do |waittime|
  if waittime.to_i > 120000
   return "Wait time exceeds typical http request time of 120 seconds. Please lower wait time."
  else
    wait_seconds = "#{waittime}".to_i/1000.to_f
    sleep(wait_seconds)
    return "#{wait_seconds} seconds" 
  end
end

get '/dig/:addr' do |addr|
  ips = Resolv.getaddresses "#{addr}"
  return "#{ips}"
end