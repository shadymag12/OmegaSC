Rails.application.routes.draw do
  root to: "home#index", as: :user
  get 'autocomplete_product_name', to: 'home#autocomplete_product_name', as: :autocomplete_product_name
end
