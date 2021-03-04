Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:new, :create, :index, :show] do
    resources :doses, only: [:new, :create]
  end
    resources :doses, only: [:destroy]

  # get 'cocktails', to: 'cocktails#index'

  # get 'cocktails/:id', to: 'cocktails#show', as: :cocktail

  # get 'cocktails/new', to: 'cocktails#new'
  # post 'cocktails', to: 'cocktails#create'


  # get 'doses/new', to: 'doses#new'
  # post 'doses', to: 'doses#create'

  # delete 'doses/:id', to: 'doses#destroy'
end
