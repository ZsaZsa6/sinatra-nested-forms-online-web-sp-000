require './environment'

module FormsLab
  class App < Sinatra::Base


    get '/' do
      erb :root
    end
    get '/new' do
      erb :"pirates/new"
    end
    post '/pirates' do
      # binding.pry
      params[:pirates].each do |details|
        Pirate.new(details)
      end
      params[:ships].each do |details|
        Ship.new(details)
      end

  @ships = Ship.all
  # @pirates = Pirate.all

   erb :"pirates/show"
    end
  end
end
