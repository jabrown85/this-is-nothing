require 'sinatra'

class App < Sinatra::Base
  get '/' do
    sleep 50
    'testing...'
  end

  get '/hello' do
    'world!'
  end

  get '/hi' do
    '!!!'
  end
end
