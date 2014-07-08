Rails.application.routes.draw do
  # Routes for the User resource:
  # CREATE
  #get '/new_user' => 'users#new'
  #get '/create_user' => 'users#create'

  # READ
 get '/users' => 'users#index'
 get '/users/:id' => 'users#show'

  # UPDATE
 get '/users/:id/edit' => 'users#edit'
 get '/users/:id/update' => 'users#update'

  # DELETE
 get '/users/:id/destroy' => 'users#destroy'
  #------------------------------

  get '/gifs/:id' => 'gifs#show'
#   get '/gifs/1' => 'gifs#first'
#   get '/gifs/2' => 'gifs#second'
#   get '/gifs/3' => 'gifs#third'
  get '/new-gif/'=> 'gifs#new'
  get '/create_gif' => 'gifs#create'
  get '/gifs/:id/edit' => 'gifs#edit'
  get '/update_gif/:id' => 'gifs#update'
  get '/gifs/:id/destroy' => 'gifs#destroy' 
  get '/gifs/' => 'gifs#index'
  end
