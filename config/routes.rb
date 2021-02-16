Rails.application.routes.draw do

  resources :players, only: [:show, :index, :destroy]

  resources :users, only: [:show, :index, :create, :new]

  resources :teams, only: [:index, :show, :create, :new, :destroy]

  resources :team_builders, only: [:index, :show, :create, :new, :update, :destroy] 

end
