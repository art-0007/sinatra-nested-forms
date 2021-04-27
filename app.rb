require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do 
      erb :root
    end

    get '/new' do
    erb :'pirates/new'
    end

    post '/pirates' do
      #binding.pry
      #@pirate = Pirate.new(params[:pirate])
      @pirate = Pirate.new(name: params[:pirate][:name], height: params[:pirate][:height], weight: params[:pirate][:weight])
      params["pirate"]["ships"].each do |ship|
        #binding.pry
         ship = Ship.new(ship)
         #ship.pirate = @pirate
      end
      #binding.pry
      @ships = Ship.all

      erb :'pirates/show'
    end

    # post '/pirates' do
    # binding.pry  
    # end


  end

  end

