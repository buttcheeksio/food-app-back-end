Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      # resources :recipes
      resources :ingredients
      # resources :user_ingredients
      get 'recipe_ingredients', to: 'recipe_ingredients#index'
      post 'recipes', to: 'recipes#create'
      get 'recipes', to: 'recipes#index'
      get 'user_ingredients', to: 'user_ingredients#index'
      get 'user_ingredients/:id', to: 'user_ingredients#show_users_ingredients'
      post 'user_ingredients', to: 'user_ingredients#create_user_ingredients'
    end
  end
end
