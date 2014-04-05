DrinkUp::Application.routes.draw do
  match('/', {:via => :get, :to => 'drinks#index'})
  match('/suggestion', {:via => :post, :to => 'drinks#show'})
  match('/add', {:via => :get, :to => 'drinks#new_drink'})
  match('/add', {:via => :post, :to => 'drinks#create'})
end
