Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # As a user, I can list tasks
  # As a user, I can view the details of a task
  # As a user, I can add a new task
  # As a user, I can edit a task (mark as completed / update title & details)
  # As a user, I can remove a task

  # Create
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # Read
  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :tasks_edit
  patch 'tasks/:id', to: 'tasks#update'

  # Destroy
  delete 'tasks/:id', to: 'tasks#destroy'
end
