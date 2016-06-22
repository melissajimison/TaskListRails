Rails.application.routes.draw do
  root 'tasks#index'
  get '/tasks' => 'tasks#index', as: 'tasks'

  post '/tasks' => 'tasks#create'
  get '/tasks/new' => 'tasks#new', as: 'new_task'

  get '/tasks/completed' => 'tasks#allcompleted', as: 'allcompleted'

  get '/tasks/:id/edit' => 'tasks#edit', as: 'edit_task'
  patch '/tasks/:id' => 'tasks#update'

  patch '/tasks/:id/completed' => 'tasks#completed', as: 'completed'
  patch '/tasks/:id/uncompleted' => 'tasks#uncompleted', as: 'uncompleted'

  get '/tasks/:id' => 'tasks#show', as: 'task'
  delete '/tasks/:id' => 'tasks#destroy', as: 'destroy'

end
