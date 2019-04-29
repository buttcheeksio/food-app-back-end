Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :ingredients
      get 'recipe_ingredients', to: 'recipe_ingredients#index'
      post 'recipes', to: 'recipes#create'
      get 'recipes', to: 'recipes#index'
      get 'user_ingredients', to: 'user_ingredients#index'
      get 'user_ingredients/:id', to: 'user_ingredients#show_users_ingredients'
      post 'user_ingredients', to: 'user_ingredients#create'
      delete 'user_ingredients', to: 'user_ingredients#destroy'
    end
  end
end
