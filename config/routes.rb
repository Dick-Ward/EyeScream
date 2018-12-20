Rails.application.routes.draw do
  resources :flavors
  resources :trucks
  get 'trucks/:id/toggle', to: "trucks#toggle", as: "toggle"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
