Rails.application.routes.draw do
  namespace :api do
    get '/contacts' => 'contacts#index'
    get '/contacts/:id' => 'contacts#show'
    post '/contacts' => 'contacts#create'
    delete '/contacts/:id' => 'contacts#delete'
  end
end
