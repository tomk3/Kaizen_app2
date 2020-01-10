Rails.application.routes.draw do
  get 'product/new' => "product#new"
  post 'product/create' => "product#create"

  get "login" => "home#login"

  get 'record' => "home#record"
  post "record/create" => "home#create"

  get "graph" => "home#graph"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
