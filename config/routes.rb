Rails.application.routes.draw do
  # Set Views/Home/index is the main page
  root 'home#index'
  get 'home/index', to: 'home#index'
  post 'home/contact', to: 'home#contact'
  post 'home/buy_cotton', to: 'home#buy_cotton'
  post 'home/sell_cotton', to: 'home#sell_cotton'
end
