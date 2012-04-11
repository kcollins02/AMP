Assistant::Application.routes.draw do

  resources :users, :user_sessions, :transactions
  
  get "home/index"
  root :to => "home#index"

  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout

end
