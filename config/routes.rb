Rails.application.routes.draw do
  resources :companies do
    collection { post :import }
  end

  resources :comapnies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
