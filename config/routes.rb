Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :artists, except: [:destroy]
    resources :songs, except: [:destroy] 
    resources :genres, except: [:destroy]
end
