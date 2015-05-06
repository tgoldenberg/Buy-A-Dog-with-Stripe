Rails.application.routes.draw do
  resources :puppies
  resources :charges
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  root 'pages#home'
  get 'pups' => 'pages#pups'
  get 'complete_charge' => 'charges#complete'

end
