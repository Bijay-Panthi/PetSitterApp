Rails.application.routes.draw do

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/logout' => 'session#destroy'

  get "/" => "pages#home"

  get "/wall" => "pages#wall"

  get "/book" => "pages#book"

  get '/users/:id/edit' => 'users#edit'
  patch '/users/:id' => 'users#update'


  resources :services, :users, :pets

end
