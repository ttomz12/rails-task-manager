Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'list', to: 'tasks#list'
  get 'list/:id', to: 'tasks#show', as: :task

  get 'new', to: 'tasks#new', as: :new
  post 'list', to: 'tasks#create'

  get 'list/:id/edit', to: 'tasks#edit', as: :edit
  patch 'list/:id', to: 'tasks#update'
end
