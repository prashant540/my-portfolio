Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'react-items', to: 'portfolios#react'
  get 'ruby-on-rails-items', to: 'portfolios#ruby_on_rails'
  get 'portfolios/:id' ,to: 'portfolios#show', as: 'portfolio_show'
  get 'about' ,to: 'pages#about'
  get 'contact' , to: 'pages#contact'
  root to: "pages#home"
  resources :blogs do
  	member do
  		get :toggle_status
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
