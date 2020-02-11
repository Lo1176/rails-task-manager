Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # CREATE
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  # READ
  # read all tasks
  get 'tasks', to: 'tasks#index'

  # read a task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # UPDATE 2 PATCH
  patch 'tasks/:id', to: 'tasks#update'
  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy'
  # UPDATE 1 get
  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit
end
