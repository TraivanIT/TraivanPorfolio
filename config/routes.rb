Rails.application.routes.draw do
  
 
  resources :blogs
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  root to: 'pages#home'
  get 'about-traivan', to: 'pages#about'
  get 'contact', to: 'pages#contact'
end
