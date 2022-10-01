Rails.application.routes.draw do
  get 'dogs/index'
  get 'dogs/new'
  resources :owners, :cats
end
