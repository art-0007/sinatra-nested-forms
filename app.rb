require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do 
      #binding.p'ry
      erb :root
    end

    get '/new'
    erb :'pirates/new'
    end

    # post '/pirates'
    # binding.pry
    #   @pirate = Pirate.new(params[:pirate])
    #   params["pirate"]["ships"].each do |ship|
    #     Ship.new(ship)
    #   end
    #   @ship = Ship.all

    #   erb :'pirates/show'
    # end
  end

  end

