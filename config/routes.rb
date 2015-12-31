Rails.application.routes.draw do

  devise_for :admins
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        :omniauth_callbacks => "users/omniauth_callbacks" 
      }
  root to: "home#index", as: :user
  get 'autocomplete_product_name', to: 'home#autocomplete_product_name', as: :autocomplete_product_name
  get 'maths',to: 'home#maths', as: :maths
  get 'physics',to: 'home#physics', as: :physics
  get 'chemistry',to: 'home#chemistry', as: :chemistry
  post 'setlocat', to: 'home#setlocat', as: :setlocat
 
end
