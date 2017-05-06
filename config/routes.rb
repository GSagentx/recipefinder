Rails.application.routes.draw do
  get 'recipes/index' => "recipes_controller#index"
  root 'recipes_controller#index'
end
