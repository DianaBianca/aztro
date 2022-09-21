Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#index'

  post 'ask_to_aztro', to:'home#ask_to_aztro'

  get 'show/', to:'home#show', as: "showzinho"
end
