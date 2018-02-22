class Restaurant < Sinatra::Base

  # GET route for home
  get "/" do
    erb :home
  end

  # GET route for all items
  get '/items' do
    erb :items
  end

  # GET route for new item view
  get '/items/new' do
    erb :new
  end

  # GET route to get all the items
  get "/items" do
    @items = Item.all
    erb :items
  end

  # POST route for creating item
  post "/items" do
    App.create(name: params[:name], desc: params[:desc], price: params[:price], course:[course])
    redirect "/items"
  end

  
end