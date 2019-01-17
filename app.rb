require 'sinatra'

class App < Sinatra::Base
  get '/' do
    sleep 15
    'testing...'
  end

  get '/hello' do
    'world!'
  end

  get '/hi' do
    '!!!'
  end
  
  get '/fail' do
    raise 'sorry!!!'
  end
end
