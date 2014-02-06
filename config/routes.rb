BlogPerf::Application.routes.draw do
  get "log_out" => "user_sessions#destroy", :as => "log_out"
  get "log_in" => "user_sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "users#new"
  resources :users
  resources :user_sessions
end
