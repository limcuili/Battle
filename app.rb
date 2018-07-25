
require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    'Testing infrastructure working!'
  end

  # start the server if ruby file is executed directly
  run! if app_file == $0
end
