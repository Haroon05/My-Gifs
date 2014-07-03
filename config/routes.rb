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

  get '/gifs/:id' => 'application#show'
#   get '/gifs/1' => 'application#first'
#   get '/gifs/2' => 'application#second'
#   get '/gifs/3' => 'application#third'
  get '/new-gif/'=> 'application#new'
  get '/create_gif' => 'application#create'
  get '/gifs/:id/edit' => 'application#edit'
  get '/update_gif/:id' => 'application#update'
  get '/gifs/:id/destroy' => 'application#destroy' 
  end
