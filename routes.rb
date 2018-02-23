require 'pry'

class Restaurant < Sinatra::Base

  # GET route for home
  get "/" do
    erb :home
  end

  # GET route for new item view
  get '/new' do
    erb :new
  end

  # GET route to get all the items
  get "/items" do
    @items = Item.all
    erb :items
  end

  # GET route for item edit view
  get "/items/:id/edit" do
    @item = Item.find(params[:id])
    erb :edit
  end

  # PUT route to update items
  put "/items/:id" do
    item = Item.find(params[:id])
    item.update(name: params[:name], desc: params[:desc], price: params[:price].to_i, course: params[:course])
    redirect "/items"
  end

  # DELETE route, for deleting item
  delete "/items/:id" do
    Item.find(params[:id]).destroy
    redirect "/items"
  end

  # POST route for creating item
  post "/items" do
    Item.create(name: params[:name], desc: params[:desc], price: params[:price].to_i, course: params[:course])
    redirect "/items"
  end

  
end