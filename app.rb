require 'sinatra'

set :bind, '0.0.0.0'  # Asegurarse de que Sinatra escuche en todas las interfaces

get '/' do
  erb :index
end