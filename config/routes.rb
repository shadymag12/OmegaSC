Rails.application.routes.draw do
  root to: "home#index", as: :user
  get 'autocomplete_product_name', to: 'home#autocomplete_product_name', as: :autocomplete_product_name
  get 'maths',to: 'home#maths', as: :maths
  get 'physics',to: 'home#physics', as: :physics
  get 'chemistry',to: 'home#chemistry', as: :chemistry
end
