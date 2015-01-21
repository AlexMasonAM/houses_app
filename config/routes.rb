Rails.application.routes.draw do
  root to: 'houses#index'
  get '/houses' => 'houses#index'
  post '/houses' => 'houses#create'

end
