Rails.application.routes.draw do
  resources :flavors
  resources :trucks

  #Custom routing goodness.
  get 'trucks/:id/toggle', to: "trucks#toggle", as: "toggle"
end
