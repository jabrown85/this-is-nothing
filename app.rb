require 'sinatra'

class App < Sinatra::Base
  get '/' do
    'testing...'
  end

  get '/hello' do
    'world!'
  end

  get '/hi' do
    '!!!'
  end

  get '/env' do
    ENV.to_h.to_s
  end
end