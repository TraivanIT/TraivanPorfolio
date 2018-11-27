Rails.application.routes.draw do
 
  devise_for :users
  resources :blogs do
    member do
      get :toggle_status
    end
  end
  
  resources :portfolios, except: [:show]
  get 'angular-item', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  root to: 'pages#home'
  get 'about-traivan', to: 'pages#about'
  get 'contact', to: 'pages#contact'

end
