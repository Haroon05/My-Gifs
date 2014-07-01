Rails.application.routes.draw do
  get 'gifs/:id' => 'application#show'
  get '/gifs/1' => 'application#first'
  get '/gifs/2' => 'application#second'
  get '/gifs/3' => 'application#third'
  get '/new-gif/'=> 'application#new'
  get '/create_gif' => 'application#create'
  get '/gifs/:id/edit' => 'application#edit'
  get '/update_gif/:id' => 'application#update'
end
