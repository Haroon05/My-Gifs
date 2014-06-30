Rails.application.routes.draw do
  #get 'gifs/:id' => 'application#show'
  get '/gifs/1' => 'application#first'
  get '/gifs/2' => 'application#second'
  get '/gifs/3' => 'application#third'
  get '/new-gif'=> 'application#new'
  
end
