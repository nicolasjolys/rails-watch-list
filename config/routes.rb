Rails.application.routes.draw do
  get 'lists/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'lists/:list_id', to: "bookmarks#create", as: :list
  get 'lists/:id', to: "lists#show"
  resources :lists, only: [ :index, :create ]
end
