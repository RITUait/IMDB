Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home do 
    collection do
      post :search
    end
end
  resources :casts
  resources :movies
  resources :reviews
  resources :tvs
  #resources :users
  root to: "home#index"

end
