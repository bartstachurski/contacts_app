Rails.application.routes.draw do
  namespace :api do
    get '/contacts' => 'contacts#index'
    get '/contacts/:id' => 'contacts#show'
    post '/contacts' => 'contacts#create'
    delete '/contacts/:id' => 'contacts#destroy'
    patch '/contacts/:id' => 'contacts#update'
    post '/users' => 'users#create'
    post '/sessions' => 'sessions#create'
  end
  get '/contacts' => 'contacts#index'
  get '/contacts/new' => 'contacts#new'
  get '/contacts/:id' => 'contacts#show'
  post '/contacts' => 'contacts#create'
  get '/contacts/:id/edit' => 'contacts#edit'
  patch '/contacts/:id' => 'contacts#update'
end
